Rails.application.routes.draw do
  resources :circles  do
    get 'join', on: :member
  end
  devise_for :users
  get 'users/:id' => 'users#show', as: :profile
  resources :children
  get 'home/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :circles, only: [:index, :show]
  devise_for :users

  authenticated :user do
    root 'circles#index', as: "authenticated_root"
  end
end
