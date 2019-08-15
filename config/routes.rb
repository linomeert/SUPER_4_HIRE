Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  resources :users do
    resources :superheros, except: [:index] do
      resources :bookings
    end
    resources :bookings, only: [:index]
  end

  resources :superheros , only: [:show, :index]
  resources :bookings, only: [:destroy]
end
