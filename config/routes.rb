Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "species#index"
  
  resources :species, only: [:index]
  resources :breeds, only: [:index]
end
