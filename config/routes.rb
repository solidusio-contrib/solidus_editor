Rails.application.routes.draw do

  resources :content_images, :only => [:create]
  resources :content_files, :only => [:create]

end
