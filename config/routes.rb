Rails.application.routes.draw do
  root :to => 'landing_page#welcome'
  resource :cart, only: [:show]
  resources :products
  resources :order_items
end
