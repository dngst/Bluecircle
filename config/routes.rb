Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :circles, only: [:index, :show]
  devise_for :users
  resources :charges
    authenticated :user do
  	root 'circles#index', as: "authenticated_root" 

  end
  root 'home#index'
  # namespace :admin do
  # 	resources :circles
  # 	resources :children, only:[:new, :edit, :show,:index]
  # end
  resources :children, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
