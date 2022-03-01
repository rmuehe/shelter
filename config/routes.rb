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
  end
end
