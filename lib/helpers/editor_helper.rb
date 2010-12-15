module EditorHelper

  def rich_editor(options)
    options[:editor_id] = options[:id]
    options.delete(:id)

    render :partial => "shared/editor", :locals => options
  end

end
