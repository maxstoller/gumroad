# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gumroad/version"

Gem::Specification.new do |s|
  s.name        = "gumroad"
  s.version     = Gumroad::VERSION
  s.authors     = ["maxstoller"]
  s.email       = ["maxstoller@gmail.com"]
  s.homepage    = "https://github.com/maxstoller/gumroad"
  s.summary     = %q{Gumroad API wrapper}
  s.description = %q{A Ruby wrapper for the Gumroad API.}

  s.rubyforge_project = "gumroad"

  s.files         = [
    "README.markdown",
    "LICENSE",
    "Gemfile",
    "gumroad.gemspec",
    "Rakefile",
    "lib/gumroad.rb",
    "lib/gumroad/session.rb",
    "lib/gumroad/link.rb",
    "lib/gumroad/link_proxy.rb",
    "lib/gumroad/version.rb"
  ]
  
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "httparty"
end
