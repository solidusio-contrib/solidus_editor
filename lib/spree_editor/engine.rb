module SpreeEditor
  class Engine < Rails::Engine
    isolate_namespace Spree
    engine_name 'spree_editor'

    initializer 'spree_editor.preferences', before: :load_config_initializers do
      SpreeEditor::Config = Spree::EditorSetting.new

      if Spree::Config.has_preference? :show_raw_product_description
        Spree::Config[:show_raw_product_description] = SpreeEditor::Config[:enabled]
      end
    end

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      cache_klasses = %W(#{config.root}/app/**/*_decorator*.rb)
      Dir.glob(cache_klasses) do |klass|
        Rails.configuration.cache_classes ? require(klass) : load(klass)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end
