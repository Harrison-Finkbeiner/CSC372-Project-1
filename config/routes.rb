Rails.application.routes.draw do
  get 'recipe/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'recipe#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
