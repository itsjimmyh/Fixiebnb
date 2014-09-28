Rails.application.routes.draw do
  root to: 'staticpages#root'

  resources :users, only: [:new, :create, :show] do
    resources :listings
  end

  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :listings do
      resources :requests
    end
  end

end
