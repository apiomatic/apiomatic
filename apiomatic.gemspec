# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apiomatic/version'

Gem::Specification.new do |spec|
  spec.name          = 'apiomatic'
  spec.version       = Apiomatic::VERSION
  spec.authors       = ['Andrew Maraev']
  spec.email         = ['the_vk@thevk.net']

  spec.summary       = 'apiomatic'
  spec.description   = 'nano-ci is a REST API framework'
  spec.homepage      = 'http://github.com/apiomatic/apiomatic'
  spec.license       = 'MIT'

  spec.files         = Dir.glob('{bin,lib}/**/*') + %w[
    CHANGELOG.md
    LICENSE
    README.rdoc
  ]
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rack', '~> 2.2' 
end
