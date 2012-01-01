class EditorConfiguration < Configuration
  preference :enabled, :boolean, :default => true
  preference :current_editor, :string, :default => 'WYMEditor'
  preference :ids, :text, :default => 'product_description page_body'
end
