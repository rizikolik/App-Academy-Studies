Rails.application.routes.draw do
    resources :cats, except: :destroy

end
