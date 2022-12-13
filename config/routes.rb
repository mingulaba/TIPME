Rails.application.routes.draw do
  devise_for :users

  resources :users
  root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  get "dashboard", to: "pages#dashboard"

  resources :restaurants, only: %i[new create] do
    resources :team_members, only: %i[index show new create] do
      get "payment_confirm", to: "pages#payment_confirm"
    end
  end

  resources :team_members, only: %i[destroy] do
    resources :tables, only: :create
  end

  get '/profile', to: 'pages#profile'
end
