# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'persey/version'

Gem::Specification.new do |spec|
  spec.name          = "persey"
  spec.version       = Persey::VERSION
  spec.authors       = ["Andrey Kumanyaev"]
  spec.email         = ["me@zzet.org"]
  spec.summary       = %q{Helps you easily manage environment specific settings}
  spec.description   = %q{Persey helps you easily load configs from different files and use them from one variable. Based on Configus.}
  spec.homepage      = "https://github.com/zzet/persey"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end