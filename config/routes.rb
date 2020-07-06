Rails.application.routes.draw do
  resources :menu_types
  resources :tags
  resources :menu_items
  resources :menus
  resources :restaurants
  resources :users, except: [:index]
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  post "logout", to: "sessions#destroy"
  root "application#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
