Rails.application.routes.draw do
  resources :reservations
  get 'bookings/index'
  put 'bookings/index', to: 'bookings#reserve'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'reservations#index'
end
