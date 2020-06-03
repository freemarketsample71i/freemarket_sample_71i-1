Rails.application.routes.draw do
  get 'items/index'
  get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "items#index"
  # devise_for :users
  root "items#index"
  resources :users, only: [:index, :edit]
  resources :items, only: [:index]
end
