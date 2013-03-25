# SpreeEditor

## Summary

This extension provides an inline rich-text editor for Spree. It implements different types of editors:

- [CKEditor](http://ckeditor.com/)
- [TinyMCE](http://www.tinymce.com/)

## Installation

1. Add the Spree Editor gem to your Gemfile:

```ruby
gem 'spree_editor', :github => 'spree/spree_editor'
```

2. Install the gems:

```shell
bundle install
```

3. Install the assets:

```shell
rails g spree_editor:install
```

4. If using CKEditor, and would like to enable file uploads run the ckeditor generator:

```shell
rails generate ckeditor:install --orm=active_record --backend=paperclip
rake db:migrate
```

## Configuration

Preferences can be updated within the admin panel under "configuration" then "rich editor".

Or you may set them with an initializer within your application:

```ruby
SpreeEditor::Config.tap do |config|
  config.ids = "product_description page_body event_body"
end
```

## Language-Support

To obtain support for multiple languages with TinyMCE add tinymce-rails-langs to your Gemfile:

```ruby
gem 'tinymce-rails-langs'
```

TinyMCE will not be loaded unless it finds a language package matching your `Spree::Config.default_locale`.

## Testing

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```
bundle
bundle exec rake test_app
bundle exec rspec spec
```

## TODO

* Improved i18n support.

Copyright (c) 2010-2013 [divineforest], released under the New BSD License
