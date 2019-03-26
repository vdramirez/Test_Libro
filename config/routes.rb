Rails.application.routes.draw do

  devise_for :users
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end




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
