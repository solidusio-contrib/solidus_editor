Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "include_rich_text_js",
                     :insert_after => "[data-hook='admin_inside_head'], #admin_inside_head[data-hook]",
                     :text => "<%= render :partial => 'shared/rich_editor_javascript' %>")
