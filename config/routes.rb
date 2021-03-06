Rails.application.routes.draw do
  resources :days
  resources :followings
  resources :locations
  resources :entry_comments
  resources :entries
  resources :post_comments
  resources :posts
  resources :users



  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"

  mount ActionCable.server => '/cable'
end
