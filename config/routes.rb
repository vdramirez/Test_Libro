Rails.application.routes.draw do





  scope  '(:locale)' do


  resources :users
  resources :orders
  resources :carts

  get 'store/index'
  resources :products do
    get :who_bought, :on => :member
  end
  root :to => 'store#index', :as => 'store'
  resources :line_items




end


end
