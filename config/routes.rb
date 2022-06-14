Rails.application.routes.draw do
  get 'relationships/followings'
  get 'relationships/followers'
  devise_for :users
  get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
  resources :comments, only: :create
  end
  resources :users, only: :show
end
