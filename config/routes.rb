Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show] do
    resources :user_experiences
    resources :user_educations
  end

  resources :companies do
    resources :jobs, only: [:index, :create, :new]

    member do
      get 'dashboard'
    end
  end

  resources :jobs, only: [:show, :edit, :update, :destroy] do
    resources :job_applications, only: [:index, :create, :new]

    collection do
      get 'list'
    end

    member do
      get 'ats_dashboard'
    end
  end

  resources :position_variants
  resources :job_applications, only: [:show, :edit, :update, :destroy]

end
