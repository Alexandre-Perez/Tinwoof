Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  authenticated :user do
    root "dogs#index", as: :authenticated_user
  end

  devise_scope :user do
    root 'devise/sessions#new'
  end
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
