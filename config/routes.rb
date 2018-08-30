Rails.application.routes.draw do

  resources :releases
  namespace :api do
    namespace :v1 do
      resources :tracks
      resources :playlists
      resources :releases

      get 'collection', to: 'tracks#collection'
    end
  end

end
