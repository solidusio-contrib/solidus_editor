module Spree
  module Admin
    class EditorSettingsController < BaseController
      def update
        config = Spree::EditorConfiguration.new
        params.each do |name, value|
          next unless config.has_preference? name
          config[name] = value
        end

        if Spree::Config.has_preference? :show_raw_product_description
          Spree::Config[:show_raw_product_description] = config[:enabled]
        end

        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:rich_editor))
        render :edit
      end
    end
  end
end
