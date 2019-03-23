Rails.application.routes.draw do

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end




  get 'admin/index'
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  resources :users
  resources :orders
  resources :carts
  get 'store/index'
  resources :products do
    get :who_bought, :on => :member
  end
  root :to => 'store#index', :as => 'store'
  resources :line_items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html





end
