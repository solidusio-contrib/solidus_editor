class ContentFilesController < Spree::BaseController

  def create
    @content_file = ContentFile.new(params[:content_file])
    @content_file.save!

    render :text => "#{@content_file.attachment.url},#{@content_file.attachment_file_name}"
  end

end
