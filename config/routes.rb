Rails.application.routes.draw do
  devise_for :users
  root to: 'gifts#index'
  resources :users
  resources :gifts
  resources :koes, only: [:index, :create]


 
end
