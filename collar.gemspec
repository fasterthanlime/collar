# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'collar/version'

Gem::Specification.new do |spec|
  spec.name          = "collar"
  spec.version       = Collar::VERSION
  spec.authors       = ["Amos Wenger"]
  spec.email         = ["fasterthanlime@gmail.com"]
  spec.summary       = %q{Generate duktape bindings for ooc code}
  spec.description   = %q{Uses rock's JSON backend to generate boilerplate for the Duktape JavaScript engine}
  spec.homepage      = "https://github.com/fasterthanlime/collar"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "hashie", "~> 3.3"
end
