Rails.application.routes.draw do
  resources :comments
  resources :answers
  resources :questions
  root to: "home#index"
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      confirmations: 'users/confirmations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
