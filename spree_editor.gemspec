# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'solidus_editor/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_editor'
  s.version     = SolidusEditor.version
  s.summary     = 'Adds support for WYSIWYG editors to Solidus'
  s.description = 'Currently supported editors are CKEditor and TinyMCE'
  s.required_ruby_version = '>= 2.1.0'

  s.authors       = ['James Whelton']
  s.homepage      = 'https://github.com/solidusio-contrib/solidus_editor'
  s.license       = 'BSD-3'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'ckeditor',      '~> 4.1.2'
  s.add_dependency 'solidus_backend', '~> 1.2.0.rc1'
  s.add_dependency 'tinymce-rails', '~> 4.2.5'

  s.add_development_dependency 'i18n-spec', '>= 0.5.0'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'capybara', '~> 2.4.4'
  s.add_development_dependency 'coffee-rails', '~> 4.0.0'
  s.add_development_dependency 'database_cleaner', '~> 1.3.0'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'sass-rails', '~> 5.0'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'poltergeist', '~> 1.5.0'
  s.add_development_dependency 'simplecov', '~> 0.9.0'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 3.1.0'
  s.add_development_dependency 'rubocop', '>= 0.24.1'
end
