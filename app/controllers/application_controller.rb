class ApplicationController < ActionController::Base




  protect_from_forgery
  private
  def current_cart
    cart = Cart.find(session[:cart_id]) rescue Cart.create
    session[:cart_id] = cart.id
    cart
  end


  protected
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, :notice => "Please log in"
    end
  end



end
