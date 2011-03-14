Rails.application.routes.draw do
  namespace :admin do
    resource :editor_settings, :only => ['show', 'update', 'edit']
  end

  resources :content_images, :only => [:create]
  resources :content_files, :only => [:create]
end
