Spree::Core::Engine.add_routes do
  namespace :admin do
    resource :editor_settings, only: [:edit, :update]
    get 'editor_settings', to: 'editor_settings#edit'
  end
end
