module Spree
  class EditorSetting < Preferences::Configuration
    preference :enabled,        :boolean, default: true
    preference :current_editor, :string,  default: 'TinyMCE'
    preference :ids,            :string,  default: 'product_description page_body'

    def self.editors
      %w(TinyMCE CKEditor)
    end
  end
end
