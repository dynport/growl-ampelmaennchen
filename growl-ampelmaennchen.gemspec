# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "growl-ampelmaennchen/version"

Gem::Specification.new do |s|
  s.name        = "growl-ampelmaennchen"
  s.version     = Growl::Ampelmaennchen::VERSION
  s.authors     = ["Tobias Schwab"]
  s.email       = ["tobias.schwab@dynport.de"]
  s.homepage    = ""
  s.summary     = %q{Simple ampelmaennchen icons to be used with growl}
  s.description = %q{Simple ampelmaennchen icons to be used with growl (extracted from https://github.com/svoop/autotest-growlr)}

  s.rubyforge_project = "growl-ampelmaennchen"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec", '2.8.0'
  s.add_development_dependency "rake", "0.9.2"
  # s.add_runtime_dependency "rest-client"
end
