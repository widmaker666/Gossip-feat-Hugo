Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :comments
  resources :sessions, only: [:new, :create, :destroy]
  
  root to: 'static#home'

  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  resources :gossips
  resources :user
end
