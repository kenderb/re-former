Rails.application.routes.draw do
  root 'users#index', as: 'users_index'
  resources :users
end
