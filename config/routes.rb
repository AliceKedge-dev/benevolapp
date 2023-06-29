Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :missions, only: [:show, :index] do
    resources :reservations, only: [:new, :create, :show, :index]
  end
  get "/profile", to: "pages#profile"
  get "/mesmissions", to: "missions#mesmissions"
  get "/confirmation/:id", to: "missions#confirmation", as: :confirmation
  get "/map", to: "pages#map"
  get '/search', to: 'missions#search'
  get '/missions/filter/:category', to: 'missions#filter', as: 'filter_missions'

  # progressions route ("/")
  get "/animal_progression", to: "pages#animal_progression"
  get "/social_progression", to: "pages#social_progression"
  get "/environnement_progression", to: "pages#environnement_progression"

  # sessions route ("/")
  get "/users/sign_in", to: "sessions#new"
  post "/users/sign_in", to: "sessions#create"
  get "/users/sign_out", to: "sessions#destroy"
end
