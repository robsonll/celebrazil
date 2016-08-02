class OrdersController < ApplicationController

  # ----------------------------------------------------------------------------------------
  # - O atributo de status da ordem será alterado para um dominio no campo order_status_id
  # - 
  # - Dominio: 1 - In Progress
  # -          2 - Placed
  # -          3 - Shipped
  # -          4 - Cancelled
  # - 
  # ----------------------------------------------------------------------------------------
  
  before_action :set_order, only: [:show, :destroy, :restore]
  
  def index
      
    if current_user.admin?  
        @orders = Order.all.order('id')
    else
        @orders = Order.where("user_id = (?) and order_status_id <> (?)", current_user.id, 4).order('id')
    end  
    
  end

  def show
      
  end      

  def destroy
    
    @order.update(order_status_id: 4)
    session[:order_id] = nil
    
    respond_to do |format|
      format.html { redirect_to orders_path, notice: 'Your Order has been cancelled.' }
      format.json { head :no_content }
    end
  end

  def restore
    
    @order.update(order_status_id: 2)
    #session[:order_id] = nil
    
    respond_to do |format|
      format.html { redirect_to orders_path, notice: 'Your Order has been restored.' }
      format.json { head :no_content }
    end
  end

  def place

    current_order.update(order_status_id: 2)
    session[:order_id] = nil
    
    respond_to do |format|
      format.html { redirect_to orders_path, notice: 'Your order has been placed.' }
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