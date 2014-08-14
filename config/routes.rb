Mother::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :foods
    end
  end

  get 'ember/index'
  root 'ember#index'
end
