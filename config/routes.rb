Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
  get "flats/:id", to: "flats#show", as: :flat
  resources :bookings
end
