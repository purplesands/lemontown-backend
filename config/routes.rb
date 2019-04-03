Rails.application.routes.draw do
  resources :followings
  resources :locations
  resources :entry_comments
  resources :entries
  resources :post_comments
  resources :posts
  resources :users
  namespace :api do
    namespace :v1 do
      get 'users/username'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
