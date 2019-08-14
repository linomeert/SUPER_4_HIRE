Rails.application.routes.draw do

  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/show'
  get 'bookings/edit'
  root to: 'pages#home'

  devise_for :users

  resources :users do
    resources :superheros do
      resources :bookings
    end
  end
   resources :superheros , only: [:show, :index]
   resources :bookings, only: [:destroy]
end
