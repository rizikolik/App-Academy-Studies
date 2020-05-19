Rails.application.routes.draw do
  get 'silly',to:'silly#fun'

  post 'silly', to:'silly#ask'

  post 'silly/:id', to: 'silly#quick'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
