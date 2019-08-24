Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json'} do
    get 'things', to: 'things#index'
  end

  resources :events
  root to: "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
