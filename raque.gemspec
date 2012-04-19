# -*- encoding: utf-8 -*-
require File.expand_path('../lib/raque/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mal Curtis"]
  gem.email         = ["mal@mal.co.nz"]
  gem.description   = %q{Run Rake tasks via a Resque worker. Rails startup is slow, hence Rake is too. It's already loaded into Resque so let’s use it from there}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/snikch/raque"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "raque"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.2"

  gem.add_dependency "rake"
  gem.add_dependency "thor"
  gem.add_dependency "resque"
end
