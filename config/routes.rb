Rails.application.routes.draw do
  resources :pictures
  resources :plant_diseases
  resources :plant_bugs
  resources :plant_location_months
  resources :replies
  resources :comments
  resources :posts
  resources :users
  resources :plants
  resources :diseases
  resources :bugs
  resources :months
  resources :locations
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
