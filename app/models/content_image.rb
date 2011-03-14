class ContentImage < Image
  has_attached_file :attachment, 
    :styles => {:mini => '48x48#', :large => '600x600>'},
    :default_style => :large,
    :url => "/assets/content_images/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/content_images/:id/:style/:basename.:extension"
end
