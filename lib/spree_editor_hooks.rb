Deface::Override.new(
  :virtual_path => "admin/configurations/index",
  :name => "spree_editor_admin_configurations_menu",
  :insert_bottom => "[data-hook='admin_configurations_menu']",
  :text => %(
  <tr>
    <td><%= link_to t("rich_editor"), admin_editor_settings_path %></td>
    <td><%= t("rich_editor_description") %></td>
  </tr>),
  :disabled => false)

Deface::Override.new(
  :virtual_path => "admin/shared/_configuration_menu",
  :name => "spree_editor_admin_configurations_sidebar_menu",
  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
  :text => %(<%= content_tag(:li, :class => controller.controller_name == 'editor_settings' ? 'active' : nil) { link_to t('rich_editor'), admin_editor_settings_path } %>),
  :disabled => false)

Deface::Override.new(
  :virtual_path => "layouts/admin",
  :name => "spree_editor_admin_inside_head",
  :insert_bottom => "[data-hook='admin_footer_scripts']",
  :partial => 'shared/rich_editor_javascript',
  :disabled => false)
