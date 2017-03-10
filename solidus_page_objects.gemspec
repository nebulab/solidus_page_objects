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

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus_core', '>= 2.1'

  s.add_development_dependency 'capybara'
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
end
