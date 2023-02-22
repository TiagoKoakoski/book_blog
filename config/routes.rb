Rails.application.routes.draw do
  root to: "home#index"

  resources :books, only: [:index]
  resources :authors, only: [:index]
end
