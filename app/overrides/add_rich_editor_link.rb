Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "add_rich_editor_link",
                     :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :text => "<tr>
      <td><%= link_to t(\"rich_editor\"), admin_editor_settings_path %></td>
      <td><%= t(\"rich_editor_description\") %></td>
      </tr>")
