class Ckeditor::AttachmentFile < Ckeditor::Asset
  has_attached_file :data

  include Spree::Core::S3Support
  supports_s3 :data

  Ckeditor::AttachmentFile.attachment_definitions[:data][:path] = Spree::Config[:attachment_path]
  Ckeditor::AttachmentFile.attachment_definitions[:data][:url] = Spree::Config[:attachment_url]

  validates_attachment_size :data, :less_than => 100.megabytes
  validates_attachment_presence :data

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
