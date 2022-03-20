Rails.application.routes.draw do
  root to: 'records#index'
  resources :records, only: [:new, :create, :edit, :update, :destroy]
end
