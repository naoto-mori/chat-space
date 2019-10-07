Rails.application.routes.draw do
  devise_for :users
  root to: 'messagese#index'
  resources :users, only: [:edit, :update]
end
