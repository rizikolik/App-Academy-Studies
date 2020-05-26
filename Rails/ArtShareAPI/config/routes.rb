Rails.application.routes.draw do

    resources :users, only: [:index, :show, :create, :update, :destroy] do
        resources :artworks, only: [:index]
      end
end
