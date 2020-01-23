Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlRails.application.routes.draw do
  resources :messages
  resources :users 
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'

  resources :conversations
  mount ActionCable.server => '/cable'
end 
