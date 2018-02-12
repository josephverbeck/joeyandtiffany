Rails.application.routes.draw do
  root 'pages#index'

  get 'pages/jack_rose', to: "pages#jack_rose", as: "jack_rose"
  get 'pages/our_wedding', to: "pages#our_wedding", as: "our_wedding"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
