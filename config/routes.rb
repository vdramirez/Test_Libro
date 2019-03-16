Rails.application.routes.draw do
  resources :carts
  get 'store/index'
  resources :products
  root :to => 'store#index', :as => 'store'
  resources :line_items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html





end
