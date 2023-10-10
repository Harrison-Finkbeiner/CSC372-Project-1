Rails.application.routes.draw do
  resources :users
  root 'home_page#index'
  resources :home_page
  resources :recipes

  get 'recipes/index'


  post 'users/new'
  get 'users/login'
  post 'users/login'

  get 'search', to:"recipes#search"
  resources :recipes do
  end

end
