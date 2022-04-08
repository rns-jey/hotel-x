Rails.application.routes.draw do
  get 'bookings/index'
  get 'reservation/index'
  post 'reservation/index', to: 'reservation#book'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'reservation#index'
end
