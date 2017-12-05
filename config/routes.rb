Rails.application.routes.draw do
  root :to => 'landing_page#welcome'
  resources :accounts
  resources :order_items
  resources :orders
  resources :products
end
