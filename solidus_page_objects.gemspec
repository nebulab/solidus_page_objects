# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_page_objects/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_page_objects'
  s.version     = SolidusPageObjects::VERSION
  s.summary     = 'Solidus Page Objects'
  s.description = 'Page objects for testing solidus applications'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Nebulab'
  s.email     = 'info@nebulab.it'
  # s.homepage  = 'http://www.example.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'solidus_core', '>= 2.1'
  s.add_dependency 'site_prism', '~> 2.9'

  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '0.47.1'
  s.add_development_dependency 'rubocop-rspec', '1.13.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry-byebug'
end
