class ApplicationController < ActionController::Base
  private
  def current_cart
    cart = Cart.find(session[:cart_id]) rescue Cart.create
    session[:cart_id] = cart.id
    cart
  end
end
