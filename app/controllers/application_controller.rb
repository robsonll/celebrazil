class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if user_signed_in?
      if !session[:order_id].nil?
        Order.find(session[:order_id])
      else
        Order.new(:user_id => current_user.id)
      end
    end  
  end
  
end
