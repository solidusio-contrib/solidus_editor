Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :editor_settings, only: [:show, :update, :edit]
  end
end
