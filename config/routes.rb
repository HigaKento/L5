Rails.application.routes.draw do
  get 'tweets/index'
  get 'users/index'
  resources :users
  get 'users/new'
  post 'users',to:'users#create'
  resources :tweets
  get 'tweets/new'
  post 'tweets',to:'tweets#create'
  root 'tweets#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
