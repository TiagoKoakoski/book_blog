Rails.application.routes.draw do
  root to: "home#index"

  resources :books, only: [:index, :new, :create, :show]
  resources :authors, only: [:index, :new, :create]
end
