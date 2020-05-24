Rails.application.routes.draw do
resources :cats

resources :cats do
    resources :toys
  end

root "cats#index"
end
