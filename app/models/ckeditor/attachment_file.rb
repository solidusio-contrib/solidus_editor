# frozen_string_literal: true

module Ckeditor
  class AttachmentFile < Ckeditor::Asset
    has_attached_file :data

    attachment_definitions[:data][:path] = '/:class/:id/:style/:basename.:extension'
    attachment_definitions[:data][:url] = '/:class/:id/:style/:basename.:extension'

    validates_attachment_size :data, less_than: 100.megabytes
    validates_attachment_presence :data

    def url_thumb
      @url_thumb ||= Ckeditor::Utils.filethumb(filename)
    end
  end
end
