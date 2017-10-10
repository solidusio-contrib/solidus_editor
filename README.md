# Solidus Editor

This extension provides an inline rich-text editor for Solidus. It is based off [spree_editor](https://github.com/spree-contrib/spree_editor). It implements different types of editors:

- [CKEditor][1]
- [TinyMCE][2]

Please not that this extension is just a simple integration of some pretty complex gems: [`ckeditor`][9] and [`tinymce-rails`][10].

If you have issues, please check their issues trackers first.

---

## Installation

1. Add the Solidus Editor gem to your `Gemfile`:
  ```ruby
  gem 'solidus_editor', github: 'solidusio-contrib/solidus_editor', branch: 'master'
  ```

2. Run:
  ```sh
  $ bundle install
  $ rails g solidus_editor:install
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

solidus\_editor should be configured inside an initializer

```ruby
# Required if using solidus_frontend
Spree::Config[:show_raw_product_description] = true

SpreeEditor::Config.tap do |config|
  config.ids = 'product_description page_body event_body'

  # change the editor to CKEditor
  config.current_editor = 'CKEditor'
end
```

Solidus itself should be configured to show

The default values are:

```ruby
config.enabled = true,
config.current_editor = 'TinyMCE',
config.ids = 'product_description page_body'
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

Copyright (c) 2016 [James Whelton][5] and other [contributors][6], released under the [New BSD License][7]

[1]: http://ckeditor.com
[2]: http://www.tinymce.com
[3]: http://www.fsf.org/licensing/essays/free-sw.html
[4]: https://github.com/solidusio-contrib/solidus_editor/issues
[5]: https://github.com/Whelton
[6]: https://github.com/solidusio-contrib/solidus_editor/graphs/contributors
[7]: https://github.com/solidusio-contrib/solidus_editor/blob/master/LICENSE.md
[8]: https://github.com/solidusio-contrib/v/blob/master/CONTRIBUTING.md
[9]: https://github.com/galetahub/ckeditor
[10]: https://github.com/spohlenz/tinymce-rails
