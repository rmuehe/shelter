Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "providers#index"
  
  # get "/shelters", to: "shelters#index"
  # get "/shelters/:id", to: "shelters#show"

  resources :providers do
    resources :reservations
  end

  resources :users do
    resources :reservations

    # post '/users/:user_id/requests', to: 'request#create', as: 'create_user_request'
    post '/requests', to: 'requests#create', as: 'create_request'
    delete '/requests', to: 'requests#destroy', as: 'destroy_request'
    resources :requests
  end

end
