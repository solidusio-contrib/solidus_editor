Spree::Core::Engine.add_routes do
  namespace :admin do
    resource :editor_settings, only: [:edit, :update]
  end
end
