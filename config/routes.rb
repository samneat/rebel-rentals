Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :ships do
    resources :reviews, only: [:new, :show, :index]
    resources :bookings, only: [:new, :create, :show, :edit, :update]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
