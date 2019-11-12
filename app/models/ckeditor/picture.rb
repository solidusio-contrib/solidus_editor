# frozen_string_literal: true

module Ckeditor
  class Picture < Asset
    has_attached_file :data, styles: { content: '800>', thumb: '118x100#' }

    attachment_definitions[:data][:path] = '/:class/:id/:style/:basename.:extension'
    attachment_definitions[:data][:url] = '/:class/:id/:style/:basename.:extension'

    validates_attachment_size :data, less_than: 2.megabytes
    validates_attachment_presence :data

    def url_content
      url(:content)
    end
  end
end
