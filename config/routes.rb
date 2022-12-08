Rails.application.routes.draw do
  devise_for :users

  resources :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get "/dashboard", to: "pages#dashboard"

  resources :restaurants, only: %i[new create]
  resources :team_members, only: :index
end
