Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :editor_settings, only: [:edit, :update]
  end
end
