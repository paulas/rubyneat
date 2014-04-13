# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: rubyneat 0.3.5.alpha ruby lib

Gem::Specification.new do |s|
  s.name = "rubyneat"
  s.version = "0.3.5.alpha"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Fred Mitchell"]
  s.date = "2014-04-13"
  s.description = "\n  NEAT Algorithm for Ruby.\n  "
  s.email = "fred@lrcsoft.com"
  s.executables = ["neat"]
  s.files = [
    ".directory",
    ".idea/.name",
    ".idea/.rakeTasks",
    ".idea/dictionaries/trader.xml",
    ".idea/encodings.xml",
    ".idea/misc.xml",
    ".idea/modules.xml",
    ".idea/rubyneat.iml",
    ".idea/runConfigurations/invpend_neat.xml",
    ".idea/runConfigurations/sigdebug_neat.xml",
    ".idea/runConfigurations/xor_neat.xml",
    ".idea/runConfigurations/xordebug_neat.xml",
    ".idea/runConfigurations/xorsin_neat.xml",
    ".idea/scopes/scope_settings.xml",
    ".idea/vcs.xml",
    ".idea/workspace.xml",
    ".semver",
    ".yardoc/checksums",
    ".yardoc/object_types",
    ".yardoc/objects/root.dat",
    ".yardoc/proxy_types",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "Rakefile",
    "bin/neat",
    "config/application.rb",
    "doc/ControllerPoint.html",
    "doc/CuteA.html",
    "doc/CuteB.html",
    "doc/DSL.html",
    "doc/NEAT.html",
    "doc/NEAT/BasicNeuronTypes.html",
    "doc/NEAT/BasicNeuronTypes/BiasNeuron.html",
    "doc/NEAT/BasicNeuronTypes/CosineNeuron.html",
    "doc/NEAT/BasicNeuronTypes/InputNeuron.html",
    "doc/NEAT/BasicNeuronTypes/SigmoidNeuron.html",
    "doc/NEAT/BasicNeuronTypes/SineNeuron.html",
    "doc/NEAT/BasicNeuronTypes/TanhNeuron.html",
    "doc/NEAT/Controller.html",
    "doc/NEAT/Controller/NeatSettings.html",
    "doc/NEAT/Critter.html",
    "doc/NEAT/Critter/Genotype.html",
    "doc/NEAT/Critter/Genotype/Gene.html",
    "doc/NEAT/Critter/Phenotype.html",
    "doc/NEAT/DSL.html",
    "doc/NEAT/Evaluator.html",
    "doc/NEAT/Evolver.html",
    "doc/NEAT/Evolver/CritterOp.html",
    "doc/NEAT/Expressor.html",
    "doc/NEAT/Graph.html",
    "doc/NEAT/Graph/DependencyResolver.html",
    "doc/NEAT/Graph/GraphException.html",
    "doc/NEAT/NeatException.html",
    "doc/NEAT/NeatOb.html",
    "doc/NEAT/Neuron.html",
    "doc/NEAT/Operator.html",
    "doc/NEAT/Population.html",
    "doc/NEAT/Trait.html",
    "doc/_index.html",
    "doc/class_list.html",
    "doc/css/common.css",
    "doc/css/full_list.css",
    "doc/css/style.css",
    "doc/file_list.html",
    "doc/frames.html",
    "doc/index.html",
    "doc/js/app.js",
    "doc/js/full_list.js",
    "doc/js/jquery.js",
    "doc/method_list.html",
    "doc/top-level-namespace.html",
    "foo/foo_aquarium_example.rb",
    "foo/foo_gosu.rb",
    "foo/foo_rubygoo.rb",
    "foo/foo_sdl.rb",
    "foo/icon.png",
    "lib/rubyneat.rb",
    "lib/rubyneat/critter.rb",
    "lib/rubyneat/default_neat.rb",
    "lib/rubyneat/dsl.rb",
    "lib/rubyneat/evaluator.rb",
    "lib/rubyneat/evolver.rb",
    "lib/rubyneat/expressor.rb",
    "lib/rubyneat/graph.rb",
    "lib/rubyneat/neuron.rb",
    "lib/rubyneat/population.rb",
    "lib/rubyneat/rubyneat.rb",
    "neater/invpend_neat.rb",
    "neater/rnlib/inverted_pendulum.rb",
    "neater/rnlib/xor.rb",
    "neater/sigdebug_neat.rb",
    "neater/xor_neat.rb",
    "neater/xoranalog_neat.rb",
    "neater/xorsin_neat.rb",
    "projectFilesBackup/.idea/rubyneat.iml",
    "public/background.png",
    "public/metalpoles_molton_ball_l.jpg",
    "public/pointer.png",
    "public/pointer.xcf",
    "public/pole.png",
    "public/pole.xcf",
    "public/wheel-of-year-stone-DD-131-WOYS.jpg",
    "public/wheel.png",
    "public/wheel.xcf",
    "public/wood-planks-texture.jpg",
    "rubyneat.gemspec",
    "spec/lib/rubyneat/rubyneat_spec.rb"
  ]
  s.homepage = "http://rubyneat.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "RubyNEAT NeuralEvolution of Augmenting Topologies"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongo>, [">= 0"])
      s.add_runtime_dependency(%q<bson_ext>, [">= 0"])
      s.add_runtime_dependency(%q<distribution>, [">= 0"])
      s.add_runtime_dependency(%q<statistics2>, [">= 0"])
      s.add_runtime_dependency(%q<debase>, [">= 0"])
      s.add_runtime_dependency(%q<aquarium>, [">= 0"])
      s.add_runtime_dependency(%q<slop>, [">= 0"])
      s.add_runtime_dependency(%q<awesome_print>, [">= 0"])
      s.add_runtime_dependency(%q<deep_dive>, [">= 0"])
      s.add_runtime_dependency(%q<gosu>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<semver>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.7"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug-ide>, [">= 0"])
    else
      s.add_dependency(%q<mongo>, [">= 0"])
      s.add_dependency(%q<bson_ext>, [">= 0"])
      s.add_dependency(%q<distribution>, [">= 0"])
      s.add_dependency(%q<statistics2>, [">= 0"])
      s.add_dependency(%q<debase>, [">= 0"])
      s.add_dependency(%q<aquarium>, [">= 0"])
      s.add_dependency(%q<slop>, [">= 0"])
      s.add_dependency(%q<awesome_print>, [">= 0"])
      s.add_dependency(%q<deep_dive>, [">= 0"])
      s.add_dependency(%q<gosu>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<semver>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.7"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<ruby-debug-ide>, [">= 0"])
    end
  else
    s.add_dependency(%q<mongo>, [">= 0"])
    s.add_dependency(%q<bson_ext>, [">= 0"])
    s.add_dependency(%q<distribution>, [">= 0"])
    s.add_dependency(%q<statistics2>, [">= 0"])
    s.add_dependency(%q<debase>, [">= 0"])
    s.add_dependency(%q<aquarium>, [">= 0"])
    s.add_dependency(%q<slop>, [">= 0"])
    s.add_dependency(%q<awesome_print>, [">= 0"])
    s.add_dependency(%q<deep_dive>, [">= 0"])
    s.add_dependency(%q<gosu>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<semver>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.7"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<ruby-debug-ide>, [">= 0"])
  end
end

