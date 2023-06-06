Rails.application.routes.draw do
  resources :users
  resources :foods
  resources :restaurants
  resources :orders
  resources :deliverers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
