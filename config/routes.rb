Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users, controllers: {
      # omniauth_callbacks: 'users/omniauth_callbacks',
      registrations: 'users/registrations',
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      confirmations: 'users/confirmations'
  }
  resources :users, only: [:show]
  resources :talks
  resources :events
  resources :subscribers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
