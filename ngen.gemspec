# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ngen/version'

Gem::Specification.new do |spec|
  spec.name          = 'ngen'
  spec.version       = Ngen::VERSION
  spec.authors       = ['ayaya']
  spec.email         = ['ayaya@ayaya.tw']
  spec.description   = %q{Angular.js generators for rails}
  spec.summary       = %q{Angular.js generators for rails}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'rails', '>= 3.1'
end
