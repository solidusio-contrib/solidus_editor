Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_editor'
  s.version     = '1.0.0rc2'
  s.summary     = 'Adds support of several WYSIWYG editors to Spree'
  s.description = 'Atm supported: YUIRichEditor, WYMEditor, TinyMCE'
  s.required_ruby_version = '>= 1.8.7'

  s.authors           = ['Alexander Shuhin', 'Roman Smirnov', 'divineforest']
  # s.email             = 'david@loudthinking.com'
  s.homepage          = 'http://github.com/spree/spree_editor'
  # s.rubyforge_project = 'actionmailer'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('tinymce-rails', '>= 3.4.7.0.1')
  s.add_dependency('spree_core', '>= 1.0.0rc2')

end
