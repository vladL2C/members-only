Rails.application.routes.draw do
  resources :users
  resources :sessions
  resources :posts
  root 'static_pages#home'
end
