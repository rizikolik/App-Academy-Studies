Rails.application.routes.draw do
  resources :user
  resource :session, only: [:create, :destroy, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
