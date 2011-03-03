module Spree
  module Editor
    # Singleton class to access the advanced cart configuration object (EditorConfiguration.first by default) and it's preferences.
    #
    # Usage:
    # Spree::Editor::Config[:foo] # Returns the foo preference
    # Spree::Editor::Config[] # Returns a Hash with all the google base preferences
    # Spree::Editor::Config.instance # Returns the configuration object (EditorConfiguration.first)
    # Spree::Editor::Config.set(preferences_hash) # Set the advanced cart preferences as especified in +preference_hash+
    class Config
      include Singleton
      include PreferenceAccess

      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          EditorConfiguration.find_or_create_by_name("Editor configuration")
        end
      end
    end
  end
end