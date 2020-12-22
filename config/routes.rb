Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  resources :users
end
