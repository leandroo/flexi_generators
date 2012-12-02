# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Leandro de Oliveira"]
  gem.email         = ["ol.leandro@gmail.com"]
  gem.description   = "Rails generators scripts for scaffolding and layout files containing Twitter’s Bootstrap CSS"
  gem.summary       = ""
  gem.homepage      = "https://github.com/leandroo/flexi_generators"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "flexi_generators"
  gem.require_paths = ["lib"]
  gem.version       = FlexiGenerators::VERSION
  gem.add_dependency("nokogiri")
  gem.add_dependency("will_paginate", "~> 3.0")
end
