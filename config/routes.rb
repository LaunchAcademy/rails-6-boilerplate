Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "wizards#index"
  resources :wizards, only: [:new]
end
