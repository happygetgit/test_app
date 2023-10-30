Rails.application.routes.draw do
  root to: 'users#index'

  resources :users, only: [:new, :create, :index, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :registrations
end
