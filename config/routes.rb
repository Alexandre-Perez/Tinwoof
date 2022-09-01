Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"


  resources :dogs do
    resources :comments, only: [:new, :create]
  end
  resources :chatrooms, only: [:show, :index] do
    resources :messages, only: [:new, :create, :destroy]
  end
  resources :users, only: [:index, :show]
end
