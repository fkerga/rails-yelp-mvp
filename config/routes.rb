Rails.application.routes.draw do
  get 'reviews/new'
  get "restaurants", to: "restaurants#index"
  get "restaurants/new", to: "restaurants#new"
  get "restaurants/:id", to: "restaurants#show", as: :restaurant
  post "restaurants", to: "restaurants#create"
  resources :restaurants, only: [] do
    resources :reviews, only: [:new, :create, :index]
  end
  get "up" => "rails/health#show", as: :rails_health_check
end
