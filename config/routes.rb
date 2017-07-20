Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # sessions resources are for creating and destroying session ids
  resources :sessions, only: [:create, :destroy]
  # users resources are for creating new users
  resources :users, only: [:new, :create]
  root to: "users#new"
end
