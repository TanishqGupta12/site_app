Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => {  :confirmations => "confirmations", :passwords => "passwords" ,registrations: 'registrations', sessions: 'sessions' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  post '/tinymce_assets' => 'tinymce#create'
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"

  match "/:event_id/login", to: "home#login", as: "login", via: [:get, :post]
  match "/:event_id/sign_up", to: "home#sign_up", as: "sign_up", via: [:get, :post]
  match "/:event_id/about", to: "home#about", as: "about", via: [:get, :post]
  match "/:event_id/contact", to: "home#contact", as: "contact", via: [:get, :post]
  match "/:event_id/course", to: "home#course", as: "course", via: [:get, :post]
  match "/:event_id/teacher", to: "home#teacher", as: "teacher", via: [:get, :post]

  # Defines the root path route ("/")
  # root "posts#index"
end
