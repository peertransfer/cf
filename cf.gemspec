# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cf/version'

Gem::Specification.new do |spec|
  spec.name          = 'cf'
  spec.version       = Cf::VERSION
  spec.authors       = ['Jose Luis Salas', 'Omar Lopez']
  spec.email         = ['josacar@users.noreply.github.com', 'olopez@users.noreply.github.com']

  spec.summary       = 'API client for CloudFlare v4 API'
  spec.homepage      = 'https://github.com/peertransfer/cf'
  spec.license       = 'MIT'

  files = Dir['lib/**/*.rb']
  rootfiles = ['Gemfile', 'cf.gemspec', 'README.md', 'LICENSE']
  dotfiles = ['.gitignore', '.rspec']

  spec.files = files + rootfiles + dotfiles
  spec.test_files = Dir['spec/**/*.{rb,json}']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.4'

  spec.add_dependency 'public_suffix'
  spec.add_dependency 'httpclient'
end