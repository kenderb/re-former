Rails.application.routes.draw do
  root 'users#index', as: 'users_index'
  resources :users, only: [:index, :new, :show, :create, :edit, :update, :destroy]
end
