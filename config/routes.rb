Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :posts, only: [:new, :create, :index]
  resources :authors
  resources :user_sessions, only: %i[new create destroy]
end
