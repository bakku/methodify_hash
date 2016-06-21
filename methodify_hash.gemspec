# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'methodify_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "methodify_hash"
  spec.version       = MethodifyHash::VERSION
  spec.authors       = ["Christian Paling"]
  spec.email         = ["christian.paling@googlemail.com"]

  spec.summary       = %q{Enables the usage of methods instead of brackets for hashes}
  spec.homepage      = "https://github.com/bakku/methodify_hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
