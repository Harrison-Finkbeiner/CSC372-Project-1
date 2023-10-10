Rails.application.routes.draw do
  resources :users
  resources :recipes

  get 'recipes/index'


  post 'users/new'
  get 'users/login'
  post 'users/login'

  #root 'users#index'
  root 'recipes#index'

end
