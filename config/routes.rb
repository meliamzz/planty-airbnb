Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :plants, only: [:index, :show] do
    resources :bookings_requests, only: [:create]
  end
  resources :my_plants, except: [:show]
  resources :bookings, only: [:index] do
    member do
      patch :accept
      patch :decline
    end
  end
  resources :bookings_requests, only: [:index]
end
