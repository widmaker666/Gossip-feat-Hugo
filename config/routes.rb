Rails.application.routes.draw do
  root to: 'static#home'
  get '/team', to: 'static#team'
  get '/contact', to: 'static#contact'
  resources :gossip
  resources :user
end
