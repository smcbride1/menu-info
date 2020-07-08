Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :menu_types do
    resources :menus, only: [:index]
  end

  resources :tags do
    resources :menu_items, only: [:index]
  end

  resources :menu_items

  resources :menus
  resources :menus do
    resources :menu_items, only: [:index, :new]
  end

  resources :restaurants
  resources :restaurants do
    resources :menus, only: [:index, :new]
  end

  resources :users, except: [:index]
  resources :users do
    resources :restaurants, only: [:index]
    resources :menus, only: [:index]
    resources :menu_items, only: [:index]
  end

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  post "logout", to: "sessions#destroy"

  get "register", to: "users#new"
  post "register", to: "users#create"

  root "application#index"
end
