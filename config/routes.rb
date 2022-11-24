Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"
  post "/reservations", to: "reservations#create"
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
