Rails.application.routes.draw do
  root to: 'staticpages#root'

  resources :users, only: [:new, :create, :show]

  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do

    resources :listings
    resources :requests, only: [:create, :destroy]

    get "current_user_listings", to: "listings#current_user_listings"
    get "current_user_requests", to: "listings#current_user_requests"
  end


end
