Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :users do
    resources :superheros do
      resources :bookings
    end
    resources :bookings
  end
  resources :superheros , only: [:show, :index]
  resources :bookings, only: [:destroy]
end
