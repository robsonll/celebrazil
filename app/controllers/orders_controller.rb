class OrdersController < ApplicationController
    
  before_action :set_order, only: [:show]    

  def index
      
    if current_user.admin?  
        @orders = Order.all.order('id')
    else
        @orders = Order.where("user_id = (?) and order_status_id <> 4", current_user.id).order('id')
    end  
    
  end

  def show
      
  end      

  def destroy

    current_order.update(order_status_id: 4)
    session[:order_id] = nil
    
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Your Order has been cancelled.' }
      format.json { head :no_content }
    end
  end

  def place

    current_order.update(order_status_id: 2)
    session[:order_id] = nil
    
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Your order has been placed.' }
      #format.json { render :show, status: :ok, location: @portion }
    end

  end  


  private
  
    def order_params
        params.require(:order).permit(:user_id, :order_status_id, :sub_total, :rmk)
    end

    def set_order
      @order = Order.find(params[:id])
    end


end