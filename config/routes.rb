Rails.application.routes.draw do
  root 'users#index', as: 'users_index'
  resources :users, only: [:index, :new, :create, :update, :destroy]
end
