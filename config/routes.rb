Rails.application.routes.draw do
  get 'avatars/index'
  resources :events
  resources :avatar

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
