# encoding: UTF-8

$:.push File.expand_path('../lib', __FILE__)
require 'solidus_page_objects/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_page_objects'
  s.version     = SolidusPageObjects::VERSION
  s.summary     = 'Solidus Page Objects'
  s.description = 'Page objects for testing solidus applications'
  s.license     = 'MIT'

  s.author    = 'Nebulab'
  s.email     = 'opensource@nebulab.it'
  # s.homepage  = 'http://www.example.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'site_prism', '~> 2.9'
  s.add_runtime_dependency 'solidus_core', ['>= 1.1', '< 3']
  s.add_runtime_dependency 'solidus_support'

  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '0.47.1'
  s.add_development_dependency 'rubocop-rspec', '1.13.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
