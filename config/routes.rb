Rails.application.routes.draw do
  get 'home/index'
  resources :email_users
  devise_for :users
  resources :users
  resources :attendances
  get 'avatars/index'
  resources :events
  resources :avatar
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
