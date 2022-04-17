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

  # Card Packs
  get "/booster_pack", to: "cards#booster_pack"
  get "/regular_pack", to: "cards#regular_pack"
  get "/pro_pack", to: "cards#pro_pack"
  get "/max_pack", to: "cards#max_pack"
  get "/ultra_pack", to: "cards#ultra_pack"
  get "studio_pack", to: "cards#studio_pack"

  # Card Marketplace
  post "/listcard", to: "cards#list_card"
  post "/unlistcard", to: "cards#unlist_card"
  post "/buycard", to: "cards#buy_card"

  get "/marketcards", to: "cards#market_cards"
  post "/findlistings", to: "cards#find_listings"

  # Cards
  post "/findcardsrelative", to: "cards#find_cards_relative"
  post "/findcardsstrict", to: "cards#find_cards_strict"
  post "/findcardowners", to: "cards#find_card_owners"
  
  # Transactions
  post "/findtransactions", to: "transactions#find_all_tx"

  # User
  post "/buypack", to: "users#buy_pack"
  get "/usercards", to: "cards#user_cards"




end
