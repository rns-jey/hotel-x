Rails.application.routes.draw do
  get 'bookings/index'
  get 'reservations/index'
  post 'reservations/index', to: 'reservations#book'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'reservations#index'
end
