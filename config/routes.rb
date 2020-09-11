Rails.application.routes.draw do
  devise_for :users
  root to: 'gifts#index'
  resources :users, only: :show
  resources :gifts
  resources :koes
  # only: [:index, :create, :show]


 
end
