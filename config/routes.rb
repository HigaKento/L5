Rails.application.routes.draw do
  get 'tweets/index'
  get 'users/index'
  resources :users
  get 'users/new'
  post 'users',to:'users#create'
  root 'users#index'
  post 'top/login'
  get 'top/logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
