require 'rubyneat/rubyneat'

module NEAT
  #= Population of NEAT Critters.
  # The Population 
  # In ourselves we have the pool of neurons the critters all use.
  # the pool of neurons are indirects, of course, as during phenotype
  # expression, all the phenotypes shall be created individually.
  #
  class Population < NeatOb
    # Ordered list or hash of input neuron classes 
    # (all critters generated here shall have this)
    attr_accessor :input_neurons

    # List of possible neuron classes for hidden neurons.
    attr_accessor :hidden_neurons

    # Ordered list or hash of output neuron classes
    # (all critters generated here shall have this)
    attr_accessor :output_neurons

    attr_accessor :traits

    # list of critter in this population
    attr_accessor :critters

    # Overall population fitness and novelty
    attr_reader :fitness, :novelty

    # Hash list of species lists
    attr_reader :species

    # in a deep dive, exclude the following from replication.
    exclude :input_neurons, :output_neurons

    # Create initial (ramdom) population of critters
    def initialize(c, &block)
      super
      @input_neurons = c.neural_inputs.clone
      @output_neurons = c.neural_outputs.clone
      @hidden_neurons = unless c.neural_hidden.nil?
                          c.neural_hidden
                        else
                          c.neuron_catalog.keep_if {|n| not n.input?}
                        end
      @critters = (0 ... c.parms.start_population_size || c.parms.population_size).map do
        Critter.new(self)
      end
      block.(self) unless block.nil?
    end

    # Mutate the genes and neurons.
    def mutate!
      @controller.evolver.mutate! self
    end

    # Express the entire population.
    def express!
       @critters.each { |critter| critter.express! }
    end

    # Called for each sequence.
    def evaluate!
       @critters.each { |critter| critter.evaluate! }
    end
    
    # Alalyze evaluation results.
    def analyze!
       @critters.each { |critter| @controller.evaluator.analyze_for_fitness! critter }
    end

    # Call this after evaluation.
    # Returns a newly-evolved population.
    def evolve
      @controller.evolver.evolve self
    end
   
    # Group critters into species
    # Note that the @species objects
    # have useful singleton methods:
    #* @species.member? -- checks all of the lists for membership, not just the hash
    #* @species[crit].fitness -- fitness of the entire species
    def speciate!
      # We blow away existing species and create our own member? function
      @species = {} # lists keyed by representative critter
      def @species.member?(crit)
        super.member?(crit) or self.map{|k, li| li.member? crit}.reduce{|t1, t2| t1 or t2 }
      end

      def @species.evaluate!
        self.each do |k, sp|
          sp.fitness = sp.map{|crit| crit.fitness}.reduce{|a,b| a+b} / sp.size
        end
      end

      def @species.compactify!(parm)
        mutt = self[:mutt] = self.map { |k, splist| [k, splist]}.reject {|k, splist|
          splist.size >= parm.smallest_species
        }.map { |k, splist|
          self.delete k
          splist
        }.flatten

        # FIXME this code is not dry!!!!
        def mutt.fitness=(fit)
          @fitness = fit
        end

        def mutt.fitness
          @fitness
        end

        self.delete :mutt if self[:mutt].empty?
      end

      # Some convience parms
      parm = @controller.parms

      # And so now we iterate...
      @critters.each do |crit|
        wearein = false
        @species.each do |ck, list|
          delta = crit.compare(ck)
          log.debug { "delta for #{crit} and #{ck} is #{delta}" }
          if delta < parm.compatibility_threshold
            list << crit
            wearein = true
            break
          end
        end

        # New species?
        unless wearein
          @species[crit] = species = [crit]
          def species.fitness=(fit)
            @fitness = fit
          end
          def species.fitness
            @fitness
          end
        end
      end

      # Compactify the species if less than smallest_species
      @species.compactify! parm

      # And now we evaluate all species for fitness...
      @species.evaluate!

      # Dump for debugging reasons
      @species.each do |k, sp|
        log.debug ">> Species #{k} has #{sp.size} members with a #{sp.fitness} fitness"
      end

    end

    #== Generate a report on the state of this population.
    #
    def report
      {
          fitness:         report_fitness,
          fitness_species: report_fitness_species,
          best_critter:    report_best_fit,
          worst_critter:   report_worst_fit,
      }
    end

    # The "best critter" is the critter with the lowest (closet to zero)
    # fitness rating.
    def best_critter
      @critters.min {|a, b| a.fitness <=> b.fitness}
    end

    # The "worst critter" is the critter with the highest (away from zero)
    # fitness rating.
    def worst_critter
      @critters.max {|a, b| a.fitness <=> b.fitness}
    end

    protected
    # report on many fitness metrics
    def report_fitness
      {
          overall: @critters.map{|critter| critter.fitness}.reduce{|m, f| m + f} / @critters.size,
          best: best_critter.fitness,
          worst: worst_critter.fitness,
      }
    end

    # report on the best and worst species
    def report_fitness_species
      {
        best: nil,
        worst: nil,
      }
    end

    # Find the best fit critter
    def report_best_fit
      best_critter.phenotype.code
    end

    # Find the worst fit critter
    def report_worst_fit
      worst_critter.phenotype.code
    end
  end
end
