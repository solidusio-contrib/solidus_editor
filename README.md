# Spree Editor

[![Build Status](https://secure.travis-ci.org/futhr/spree_editor.png)](http://travis-ci.org/futhr/spree_editor)
[![Dependency Status](https://gemnasium.com/futhr/spree_editor.png)](https://gemnasium.com/futhr/spree_editor)
[![Coverage Status](https://coveralls.io/repos/futhr/spree_editor/badge.png?branch=2-0-stable)](https://coveralls.io/r/futhr/spree_editor)

This extension provides an inline rich-text editor for Spree. It implements different types of editors:

- [CKEditor][8]
- [TinyMCE][9]

## Installation

1. Add to your `Gemfile`:

```ruby
gem 'spree_editor', github: 'spree/spree_editor'
```

2. Install the gems:

    `bundle install`

3. Install the assets:

    `rails g spree_editor:install`

4. If using CKEditor, and would like to enable file uploads run the ckeditor generator:

    `rails generate ckeditor:install --orm=active_record --backend=paperclip && rake db:migrate`

5. In order to secure your file uploads to only be accessed by admins you will also need to configure `config/initializers/ckeditor.rb`:

```ruby
config.authorize_with :cancan, Spree::Ability
```

## Configuration

Preferences can be updated within the admin panel under `Configuration` then `Rich Editor Settings`.

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

## TODO

* Improved i18n support.

## Contributing

In the spirit of [free software][1], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][2]
* by suggesting new features
* by writing [translations][4]
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][2]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* Run `bundle install`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes and follow this [Style Guide][5]
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request

Copyright (c) 2010-2013 [divineforest][6] and [contributors][7], released under the [New BSD License][3]

[1]: http://www.fsf.org/licensing/essays/free-sw.html
[2]: https://github.com/futhr/spree_editor/issues
[3]: https://github.com/futhr/spree_editor/blob/2-0-stable/LICENSE.md
[4]: http://www.localeapp.com/projects/
[5]: https://github.com/thoughtbot/guides
[6]: https://github.com/divineforest
[7]: https://github.com/futhr/spree_editor/contributors
[8]: http://ckeditor.com
[9]: http://www.tinymce.com

