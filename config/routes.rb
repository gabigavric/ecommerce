Rails.application.routes.draw do
  root :to => 'landing_page#welcome'

  resources :landing_page, :only => :welcome

  resources :accounts do
    resources :orders
  end

  resources :order_items do
    resources :orders
  end

  resources :orders

  resources :products do
    resources :order_items
  end
end
