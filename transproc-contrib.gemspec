# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'transproc/contrib/version'

Gem::Specification.new do |spec|
  spec.name          = 'transproc-contrib'
  spec.version       = Transproc::Contrib::VERSION.dup
  spec.authors       = ['Mark Rickerby']
  spec.email         = ['me@maetl.net']
  spec.summary       = 'Contributed transforms and coercions for Transproc'
  spec.description   = 'A variety of functional transforms and value object coercions for Transproc.'

  spec.homepage      = 'https://github.com/maetl/transproc-contrib'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'transproc'
  spec.add_dependency 'addressable'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
