Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  namespace :api do
    namespace :v1 do
      get '/users/me', to: 'users#me'
      get '/users/ping', to: 'users#ping'
      resources :users
      resources :sneaker_users
      resources :comments
      resources :own_sneakers
      resources :want_sneakers
      resources :posts
      resources :sneakers

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
