Rails.application.routes.draw do
  # Devise Routes
  devise_for :users

  # Defines the root path route ("/")
  root "home#index"

  # Resource Routes
  resources :profiles, only: [:show, :update]
  resources :properties, only: [:show]
end
