Rails.application.routes.draw do
  devise_for :users
  root to: "novels#index"
  resources :novels do
    resources :comments, only: :create
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: :show do
    get :favorites, on: :collection
  end
end
