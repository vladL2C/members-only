Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create' 
  resources :sessions
  resources :posts
  root 'static_pages#home'
end
