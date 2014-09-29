Rails.application.routes.draw do
  root to: 'staticpages#root'

  resources :users, only: [:new, :create, :show]

  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :listings
    resources :requests
  end

end
