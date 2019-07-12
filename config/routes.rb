Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  get '/pizzas', to: 'pizzas#index'
  resources :pizzas
  resources :restaurants
  # get 'search_restaurants', to: 'restaurants#search'
  # get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  get '/search' => 'restaurants#search', :as => '/restaurant_path'


end
