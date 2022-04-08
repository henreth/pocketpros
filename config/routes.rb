Rails.application.routes.draw do
  resources :transactions
  resources :characters, only: [:index, :show]
  resources :cards, only: [:index, :show]
  resources :users

  # Authorization
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # Cards
  get "/booster", to: "cards#booster_pack"
  get "/regular", to: "cards#regular_pack"
  get "/pro", to: "cards#pro_pack"
  get "/max", to: "cards#max_pack"
  get "/ultra", to: "cards#ultra_pack"


end
