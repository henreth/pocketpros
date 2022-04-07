Rails.application.routes.draw do
  resources :transactions
  resources :characters
  resources :cards
  resources :users

  # Authorization
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"



end
