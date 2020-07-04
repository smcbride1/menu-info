Rails.application.routes.draw do
  resources :menu_types
  resources :tags
  resources :menu_items
  resources :menus
  resources :restaurants
  resources :users, except: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
