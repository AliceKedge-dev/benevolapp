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




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
