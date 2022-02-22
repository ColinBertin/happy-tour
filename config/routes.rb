Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :owner do
    resources :bookings, only: [:index]
    resources :tours, only: [:index]
  end

  resources :tours, only: [:index, :show, :new, :create] do
    resources :booking, only: [:create]
  end
  resources :bookings, only: [:index, :update]
end
