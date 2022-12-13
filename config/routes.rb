Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: %i[new create] do
    resources :team_members, only: %i[index show new create] do
    end
  end

  resources :restaurants, only: %i[new create] do
    resources :team_members, only: %i[index show] do

      get "payment_confirm", to: "pages#payment_confirm"
    end
  end
  resources :team_members do
    resources :tables, only: :create
  end

  resources :team_members, only: :index


  get '/profile', to: 'pages#profile'

end
# root "articles#index"


# /team_members/:team_member_id/profile
