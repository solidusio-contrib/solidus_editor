SpreeEditor
===========

# Summary

This extension provides an inline rich-text editor for Spree. It implements different types of editors:

- [CKEditor](http://ckeditor.com/)
- [TinyMCE](http://www.tinymce.com/)

# Installation

1. Add the Spree Editor gem to your Gemfile:

```ruby
gem 'spree_editor', :github => 'spree/spree_editor'
```

2. Select CKEditor or TinyMCE to use for an editor, and add the appropriate gem to your Gemfile:

```ruby
gem 'ckeditor'
```

or

```ruby
gem 'tinymce-rails', '>= 3.4.7.0.1'`
```

3. Install the gems:

```shell
bundle install
```

4. Install the assets:

```shell
rails g spree_editor:install
```

5. If using CKEditor, and would like to enable file uploads run the ckeditor generator:

```shell
rails generate ckeditor:install --orm=active_record --backend=paperclip
rake db:migrate
```

# Configuration

Preferences can be updated within the admin panel under "configuration" then "rich editor".

Or you may set them with an initializer within your application:

```ruby
SpreeEditor::Config.tap do |config|
  config.ids = "product_description page_body event_body"
end
```

# Language-Support

To obtain support for multiple languages with TinyMCE add tinymce-rails-langs to your Gemfile:

```ruby
gem 'tinymce-rails-langs'
```

TinyMCE will not be loaded unless it finds a language package matching your `Spree::Config.default_locale`.

Copyright (c) 2010-2013 [divineforest], released under the New BSD License
