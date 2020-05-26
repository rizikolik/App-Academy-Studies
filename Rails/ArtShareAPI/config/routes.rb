Rails.application.routes.draw do

    resources :users, only: [:index, :show, :create, :update, :destroy] do
        resources :artworks, only: [:index]
      end
      resources :artworks, only: [:create, :destroy, :show, :update]
      resources :artwork_shares, only: [:create, :destroy]
end
