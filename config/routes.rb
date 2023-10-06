Rails.application.routes.draw do
  resources :recipes
  get 'recipes/index'

  root 'recipes#index'

end
