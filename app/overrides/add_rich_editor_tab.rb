Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_configuration',
  name: 'add_rich_editor_tab',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<li<%== " class=\"active\"" if controller.controller_name == "editor_settings" %>><%= link_to Spree.t(:rich_editor), edit_admin_editor_settings_path %></li>'
)
