Rails.application.routes.draw do
  resources :users
  resources :recipes

  get 'recipes/index'

  post 'users/new'

  root 'recipes#index'

end
