class Spree::Admin::EditorSettingsController < Spree::Admin::BaseController

  def show
    @config = Spree::EditorConfiguration.new
  end

  def edit
    @config = Spree::EditorConfiguration.new
  end

  def update
    config = Spree::EditorConfiguration.new

    params.each do |name, value|
      next unless config.has_preference? name
      config[name] = value
    end

    if Spree::Config.has_preference? :show_raw_product_description
      Spree::Config[:show_raw_product_description] = config[:enabled]
    end

    redirect_to admin_editor_settings_path
  end

end
