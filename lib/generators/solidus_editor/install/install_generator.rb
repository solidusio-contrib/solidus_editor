# frozen_string_literal: true

module SolidusEditor
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../templates', __dir__)

      def add_stylesheets
        inject_into_file(
          'vendor/assets/stylesheets/spree/backend/all.css',
          " *= require spree/backend/solidus_editor\n",
          before: %r{\*/},
          verbose: true,
        )
      end

      def copy_tinymce_file
        copy_file 'config/tinymce.yml', 'config/tinymce.yml'
      end
    end
  end
end
