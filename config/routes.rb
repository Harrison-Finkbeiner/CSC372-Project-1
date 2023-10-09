Rails.application.routes.draw do
  root 'home_page#index'
  resources :home_page
  resources :recipes
  get 'recipes/index'
  get 'search', to:"recipes#search"
  resources :recipes do
  end
end
