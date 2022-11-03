Rails.application.routes.draw do
  resources :comments
  
  root to: 'static#home'

  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  resources :gossips
  resources :user
end
