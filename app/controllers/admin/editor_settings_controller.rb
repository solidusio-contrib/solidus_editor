class Admin::EditorSettingsController < Admin::BaseController
  def update
    @config = Spree::Editor::Config.instance
    @config.update_attributes(params[@config.class.name.underscore])
    Rails.cache.delete("configuration_#{@config.class.name}".to_sym)
    redirect_to admin_editor_settings_path
  end
end
