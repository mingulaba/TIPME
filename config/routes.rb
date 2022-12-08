Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :restaurants, only: %i[new create]
  # root "articles#index"
  resources :team_members, only: :index
end
# root "articles#index"
