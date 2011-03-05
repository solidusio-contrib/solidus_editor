class EditorConfiguration < Configuration
  preference :enabled, :boolean, :default => true
  preference :current_editor, :string, :default => 'YUIRichEditor'
end