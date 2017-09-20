Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :circles, only: [:index, :show]
  resources :charges, only: [:new, :create]
     
root 'home#index'
  


  resources :blogs do
  	resources :comments
  end

  resources :circles  do
  	get 'join', on: :member
  end
  
  devise_for :users
  get 'users/:id' => 'users#show', as: :profile
  authenticated :user do
    root 'circles#index', as: "authenticated_root"
  resources :children
  get 'home/index'

  # namespace :admin do
  # 	resources :circles
  # 	resources :children, only:[:new, :edit, :show,:index]
  # end
  resources :children, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
