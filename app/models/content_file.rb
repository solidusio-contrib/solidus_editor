class ContentFile < Asset
  has_attached_file :attachment,
    :url => "/assets/content_files/:id/:basename.:extension",
    :path => ":rails_root/public/assets/content_files/:id/:basename.:extension"
end
