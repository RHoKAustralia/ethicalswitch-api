# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ethicalswitch/version'

Gem::Specification.new do |spec|
  spec.name          = "ethicalswitch"
  spec.version       = EthicalSwitch::VERSION
  spec.authors       = ["James Maidment"]
  spec.email         = ["jmaidment@gmail.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~>1.5"
  spec.add_dependency "rake", "~>10.3.2"
  spec.add_dependency "sinatra", "~>1.3"
  spec.add_dependency "sequel", "~>4.10.0"
  spec.add_dependency "pg", "~>0.17.1"
  spec.add_dependency "json", "~>1.8.1"

  # development
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "shotgun", "~>0.9"
  spec.add_development_dependency "thin", "~>1.2"
  spec.add_development_dependency "foreman", "~>0.67.0"
  spec.add_development_dependency "sass", "~>3.3.7"
end
