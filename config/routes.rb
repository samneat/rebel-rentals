Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/my_bookings", to: "bookings#my_bookings"
  get "/my_ships", to: "ships#my_ships"
  resources :ships do
    resources :reviews, only: [:new, :show, :index]
    resources :bookings, only: [:new, :create, :show, :edit, :update] do
      get "/confirmation", to: "bookings#confirm"
      patch "/accept", to: "bookings#accept"
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
