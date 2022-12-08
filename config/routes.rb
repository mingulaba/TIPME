Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :restaurants, only: %i[new create]
  # root "articles#index"
  resources :restaurants, only: :new do
    resources :team_members, only: :show do
      get "payment_confirm", to: "pages#payment_confirm"
    end
  end
  resources :team_members do
    resources :tables, only: :create
  end
  resources :team_members, only: :index
end
# root "articles#index"
