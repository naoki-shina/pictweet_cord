Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :tweets, only: [:index, :show, :new, :destroy, :edit, :update, :create] do
  resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
