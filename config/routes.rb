Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htmlRails.application.routes.draw do
  resources :messages
  resources :users
  resources :conversations
  mount ActionCable.server => '/cable'
end 
