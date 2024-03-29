# frozen_string_literal: true

# Use this hook to configure ckeditor
if Object.const_defined?('Ckeditor')
  Rails.application.reloader.to_prepare do
    Ckeditor.setup do |config|
      # ==> ORM configuration
      # Load and configure the ORM. Supports :active_record (default), :mongo_mapper and
      # :mongoid (bson_ext recommended) by default. Other ORMs may be
      # available as additional gems.
      require 'ckeditor/orm/active_record'
  
      # Allowed image file types for upload.
      # Set to nil or [] (empty array) for all file types
      config.image_file_types = %w(jpg jpeg png gif tiff)
  
      # Allowed attachment file types for upload.
      # Set to nil or [] (empty array) for all file types
      # config.attachment_file_types = %w(doc docx xls odt ods pdf rar zip tar swf)
  
      # Setup authorization to be run as a before filter
      config.authorize_with :cancan, Spree::Ability
    end
  end
end
