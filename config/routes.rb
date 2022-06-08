Rails.application.routes.draw do
  devise_for :users
  resources :frs
  get 'home/about_us'
  root'frs#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
