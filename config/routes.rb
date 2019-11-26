Rails.application.routes.draw do
  root to: "home#index"
  get '/dashboard', to: 'home#dashboard'
  devise_for :users,
             controllers: {
                 confirmations: 'users/confirmations',
                 # omniauth_callbacks: 'users/omniauth_callbacks',
                 passwords: 'users/passwords',
                 registrations: 'users/registrations',
                 sessions: 'users/sessions',
                 unlocks: 'users/unlocks'
             }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/settings', to: 'users#show_settings'
  resources :users, only: [:index, :show, :edit]

  resources :companies do
    resources :jobs, only: [:new] # usually it should be [:index, :new, :create]
  end
  resources :jobs, except: [:new] do
    member do
      get 'apply'
      post 'submit_application'
    end
  end
end
