Mother::Application.routes.draw do
  resources :items
  resources :containers
  resources :foods
  resources :recipes
end
