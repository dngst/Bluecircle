Rails.application.routes.draw do
  resources :blogs
  resources :circles
  devise_for :users
  resources :children
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
