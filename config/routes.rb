Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end

end
# Hint: to handle the route GET "restaurants/38/reviews/new", you will have to use nested resources.
