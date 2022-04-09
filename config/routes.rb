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
  get "/booster_pack", to: "cards#booster_pack"
  get "/regular_pack", to: "cards#regular_pack"
  get "/pro_pack", to: "cards#pro_pack"
  get "/max_pack", to: "cards#max_pack"
  get "/ultra_pack", to: "cards#ultra_pack"
  get "studio_pack", to: "cards#studio_pack"


  # User
  post "/buypack", to: "users#buy_pack"


end
