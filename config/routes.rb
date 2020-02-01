Rails.application.routes.draw do
  resources :user_educations
  resources :position_variants
  resources :user_experiences
  root to: "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show]
  resources :jobs
  resources :companies
end
