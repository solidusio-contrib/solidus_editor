Deface::Override.new(
  original:      '35a14f18ffd91f105e1133ec54aec7ce25fcd79e',
  virtual_path:  'spree/admin/shared/_configuration_menu',
  name:          'add_rich_editor_tab',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text:          '<%= configurations_sidebar_menu_item Spree.t(:rich_editor), edit_admin_editor_settings_path %>'
)
