Rails.application.routes.draw do
  namespace :dashboard do
    get 'dashboard/index'
  end
  get 'home/index'
  devise_for :users
  devise_for :providers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root "users#new" 
 
   root 'home#index'
  # root "dashboard#index"
  
  namespace :dashboard do
    # authenticated :user do
    #   resources :users, module: "user", :only => [:show, :index]
    # end

    # authenticated :provider do
    #   resources :providers, module: "provider"
    # end
      
    root to: "dashboard#index"
  end

  # get "/shelters", to: "shelters#index"
  # get "/shelters/:id", to: "shelters#show"

  resources :providers do
    resources :reservations
  end

  resources :users do
    # put /users/:user_id/reservations/:id(.:format)
    put 'reservations/:id', to: 'reservations#update', as: 'update_reservation'
    resources :reservations

    # post '/users/:user_id/requests', to: 'request#create', as: 'create_user_request'
    # put /users/:user_id/requests/:id(.:format)
    put '/requests/:id', to: 'requests#update', as: 'update_request'
    post '/requests', to: 'requests#create', as: 'create_request'
    delete '/requests', to: 'requests#destroy', as: 'destroy_request'
    resources :requests
  end
end
