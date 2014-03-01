# Spree Editor

[![Build Status](https://api.travis-ci.org/spree/spree_editor.png?branch=master)](https://travis-ci.org/spree/spree_editor)
[![Code Climate](https://codeclimate.com/github/spree/spree_editor.png)](https://codeclimate.com/github/spree/spree_editor)

This extension provides an inline rich-text editor for Spree. It implements different types of editors:

- [CKEditor][1]
- [TinyMCE][2]

## Installation

1. Add the Spree Editor gem to your `Gemfile`:
```ruby
gem 'spree_editor', github: 'spree/spree_editor'
```

2. Run:
```sh
$ bundle install
$ rails g spree_editor:install
```

3. If using CKEditor, and would like to enable file uploads run the ckeditor generator:
```sh
$ rails g ckeditor:install --orm=active_record --backend=paperclip && rake db:migrate`
```

4. In order to secure your file uploads to only be accessed by admins you will also need to configure config/initializers/ckeditor.rb:
```ruby
config.authorize_with :cancan, Spree::Ability
```

## Configuration

Preferences can be updated within the admin panel under "configuration" then "rich editor".

Or you may set them with an initializer within your application:

```ruby
SpreeEditor::Config.tap do |config|
  config.ids = 'product_description page_body event_body'
end
```

## Language-Support

To obtain support for multiple languages with TinyMCE add tinymce-rails-langs to your Gemfile:

```ruby
gem 'tinymce-rails-langs'
```

TinyMCE will not be loaded unless it finds a language package matching your `Spree::Config.default_locale`.

## Contributing

In the spirit of [free software][3], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][4]
* by suggesting new features
* by writing translations
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][4]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* Run `bundle install`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request

Copyright (c) 2014 [divineforest][5] and other [contributors][6], released under the [New BSD License][7]

[1]: http://ckeditor.com
[2]: http://www.tinymce.com
[3]: http://www.fsf.org/licensing/essays/free-sw.html
[4]: https://github.com/sttermo/spree_editor/issues
[5]: https://github.com/divineforest
[6]: https://github.com/sttermo/spree_editor/graphs/contributors
[7]: https://github.com/sttermo/spree_editor/blob/master/LICENSE.md
