Rails.application.routes.draw do
#  get '/restaurants', to: 'restaurants#index'
#  get '/pizzas', to: 'pizzas#index'

  resources :pizzas, only: [:index, :show, :create, :new]
  resources :restaurants, only: [:index, :show]
end
