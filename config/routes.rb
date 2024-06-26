Rails.application.routes.draw do
  resources :appointments do
    collection do
      get :calendar
    end
    member do
      get :postpone
    end
  end
  devise_for :users
  get 'home/index'
  get 'privacidad', to: "statics#privacy"
  get 'statics/about_us'
  get 'statics/contact'
  get 'statics/privacy'
  get 'statics/treatment'

  resources :patients do
    resources :medical_records
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
end
