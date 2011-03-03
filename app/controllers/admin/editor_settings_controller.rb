class Admin::EditorSettingsController < Admin::BaseController
  def update
    preferences = params[:preferences] || {}
    enable_editor = preferences[:enabled].nil? ? false : true;
    preferences.update(:enabled => enable_editor)
    Spree::Editor::Config.set(preferences)

    respond_to do |format|
      format.html {
        redirect_to admin_editor_settings_path
      }
    end
  end
end