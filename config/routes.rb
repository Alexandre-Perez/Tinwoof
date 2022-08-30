Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users do
    resources :dogs, only: [:new, :create]
    resources :reviews
  end
  resources :dogs, except: [:new, :create]
  resources :chatrooms, only: [:show] do
    resources :messages, only: [:new, :create, :destroy]
  end
end
