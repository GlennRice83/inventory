Mother::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :items
      resources :containers
      resources :foods
      resources :recipes
    end
  end

  get 'ember/index'
  root 'ember#index'
end
