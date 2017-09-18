Rails.application.routes.draw do

  resources :blogs do
  	resources :comments
  end

  resources :circles  do
  	get 'join', on: :member
  end
  
  devise_for :users
  get 'users/:id' => 'users#show', as: :profile
  resources :children
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
