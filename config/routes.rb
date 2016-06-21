Rails.application.routes.draw do
  resources :chat_rooms, only: [:create, :new, :index, :show]
  root 'chat_rooms#index'

  devise_for :users
  mount ActionCable.server => "/cable"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
