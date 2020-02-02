Rails.application.routes.draw do
  resources :job_applications
  root to: "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:show] do
    resources :user_experiences
    resources :user_educations
  end

  resources :companies do
    resources :jobs, except: [:show, :edit]
  end
  resources :jobs, only: [:show, :edit] do
    collection do
      get 'list'
    end
  end

  resources :position_variants

end
