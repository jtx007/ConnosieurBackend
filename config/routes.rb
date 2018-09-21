Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :sneakers
  namespace :api do
    namespace :v1 do
  resources :users
  resources :sneaker_users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
