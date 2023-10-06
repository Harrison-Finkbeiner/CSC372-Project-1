Rails.application.routes.draw do
  resources :users
  resources :recipes

  get 'recipes/index'

  root 'users#index'

end
