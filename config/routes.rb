Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pets#index"
  
  resources :pets, only: [:index] do
    resources :breeds, only: [:index, :show]
  end
end
