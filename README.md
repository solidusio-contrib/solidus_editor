# Spree Editor

[![Build Status](https://travis-ci.org/spree-contrib/spree_editor.svg?branch=master)](https://travis-ci.org/spree-contrib/spree_editor)
[![Code Climate](https://codeclimate.com/github/spree-contrib/spree_editor/badges/gpa.svg)](https://codeclimate.com/github/spree-contrib/spree_editor)

This extension provides an inline rich-text editor for Spree. It implements different types of editors:

- [CKEditor][1]
- [TinyMCE][2]

---

## Installation

1. Add the Spree Editor gem to your `Gemfile`:
  ```ruby
  gem 'spree_editor', github: 'spree-contrib/spree_editor', branch: 'master'
  ```

2. Run:
  ```sh
  $ bundle install
  $ rails g spree_editor:install
  ```

3. If using CKEditor, and would like to enable file uploads run the ckeditor generator:
  ```sh
  $ rails g ckeditor:install --orm=active_record --backend=paperclip && rake db:migrate
  ```

4. In order to secure your file uploads to only be accessed by admins you will also need to configure config/initializers/ckeditor.rb:
  ```ruby
  config.authorize_with :cancan, Spree::Ability
  ```

5. In order to precompile CKEditor's generated assets, you will need to add a line in config/initializers/assets.rb:
  ```ruby
  Rails.application.config.assets.precompile += %w( ckeditor/*)
  ```
---

## Configuration

Preferences can be updated within the admin panel under "configuration" then "rich editor".

Or you may set them with an initializer within your application:

```ruby
SpreeEditor::Config.tap do |config|
  config.ids = 'product_description page_body event_body'
end
```

---

## Language-Support

To obtain support for multiple languages with TinyMCE add tinymce-rails-langs to your Gemfile:

```ruby
gem 'tinymce-rails-langs'
```

TinyMCE will not be loaded unless it finds a language package matching your `Spree::Config.default_locale`.

---

## Contributing

See corresponding [guidelines][8]

---

Copyright (c) 2010-2015 [divineforest][5] and other [contributors][6], released under the [New BSD License][7]

[1]: http://ckeditor.com
[2]: http://www.tinymce.com
[3]: http://www.fsf.org/licensing/essays/free-sw.html
[4]: https://github.com/spree-contrib/spree_editor/issues
[5]: https://github.com/divineforest
[6]: https://github.com/spree-contrib/spree_editor/graphs/contributors
[7]: https://github.com/spree-contrib/spree_editor/blob/master/LICENSE.md
[8]: https://github.com/spree-contrib/spree_editor/blob/master/CONTRIBUTING.md
