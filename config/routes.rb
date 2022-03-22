Rails.application.routes.draw do
  devise_for :users
  root to: 'records#index'
  resources :records, only: [:new, :create, :edit, :update, :destroy]
  resources :users, only: :show
end
