Rails.application.routes.draw do
  devise_for :users
  resources :chat_rooms, only: [:new, :create, :show, :index] do
    resources :messages
  end
  
  root 'chat_rooms#index'
end
