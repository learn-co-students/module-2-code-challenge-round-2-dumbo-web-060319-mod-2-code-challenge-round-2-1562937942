Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show, :index]

  get '/pizzas', to: 'pizzas#index'
  get '/pizzas/new', to: 'pizzas#new'
  post '/pizzas', to: 'pizzas#create'
  get '/pizzas/show', to: 'pizzas#show'
end
