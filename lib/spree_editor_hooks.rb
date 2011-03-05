class SpreeEditorHooks < Spree::ThemeSupport::HookListener
  # Admin configuration
  insert_after :admin_configurations_menu do
    %(<tr>
      <td><%= link_to t("rich_editor"), admin_editor_settings_path %></td>
      <td><%= t("rich_editor_description") %></td>
      </ tr>)
  end

  insert_after :admin_configurations_sidebar_menu do
    %(<li<%== ' class="active"' if controller.controller_name == 'editor_settings' %>><%= link_to t("rich_editor"), admin_editor_settings_path %></li>)
  end

  # Javascript
  insert_after :admin_inside_head do
    %(<%= render :partial => 'shared/rich_editor_javascript' %>)
  end
end