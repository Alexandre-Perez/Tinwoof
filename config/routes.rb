Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :dogs do
    resources :comments, only: [:new, :create]
  end

  resources :chatrooms, only: %i[ index show ] do
    resources :messages, only: %i[ create ]
  end

  resources :users, only: [:index, :show]
end
