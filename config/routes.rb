Rails.application.routes.draw do
  resources :accounts
  resources :order_items
  resources :orders
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
