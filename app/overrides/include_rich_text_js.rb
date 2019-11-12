# frozen_string_literal: true

Deface::Override.new(
  original: 'e004c3e716cca1f673d5142bdd7c16dc2dc5b403',
  virtual_path: 'spree/layouts/admin',
  name: 'include_rich_text_js',
  insert_bottom: '[data-hook="admin_footer_scripts"]',
  text: '<%= render partial: "shared/rich_editor_javascript" %>'
)
