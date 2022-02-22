Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :owner do
    resources :bookings, only: [:index]
    resources :tours, only: [:index]
  end

  resources :tours, only: [:index, :show, :new, :create]
  resources :bookings, only: [:index, :new, :create, :edit, :update]
end
