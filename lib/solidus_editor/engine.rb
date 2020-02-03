# frozen_string_literal: true

require 'spree/core'

module SolidusEditor
  class Engine < Rails::Engine
    include SolidusSupport::EngineExtensions::Decorators

    isolate_namespace Spree

    engine_name 'solidus_editor'

    initializer 'solidus_editor.preferences', before: :load_config_initializers do
      SpreeEditor::Config = Spree::EditorSetting.new

      if Spree::Config.has_preference? :show_raw_product_description
        Spree::Config[:show_raw_product_description] = SpreeEditor::Config[:enabled]
      end
    end

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
