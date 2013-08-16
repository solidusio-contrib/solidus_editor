# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'spree_editor/version'

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'spree_editor'
  s.version      = SpreeEditor::VERSION
  s.summary      = 'Adds support for WYSIWYG editors to Spree'
  s.description  = 'Currently Supported: CKEditor, TinyMCE'
  s.required_ruby_version = '>= 1.9.3'

  s.authors      = ['Alexander Shuhin', 'Roman Smirnov', 'divineforest', 'Marc Lee', 'Jeff Dutil']
  s.homepage     = 'http://github.com/spree/spree_editor'
  s.license      = %q{BSD-3}

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'ckeditor', '~> 4.0.4'
  s.add_runtime_dependency 'spree_backend', '~> 2.0.0'
  s.add_runtime_dependency 'tinymce-rails', '~> 4.0.2'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails', '~> 3.2.2'
  s.add_development_dependency 'database_cleaner', '~> 1.0.1'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.14'
  s.add_development_dependency 'sass-rails', '~> 3.2.6'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'shoulda-matchers', '~> 2.2'
  s.add_development_dependency 'i18n-spec', '~> 0.4.0'
  s.add_development_dependency 'fuubar', '>= 0.0.1'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'pry-rails'
end
