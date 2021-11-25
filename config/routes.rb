Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :plants, only: [:index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index]

  namespace :owner do
    resources :my_plants
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
