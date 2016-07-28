class OrderItemsController < ApplicationController
  
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end


  # def place

  #   current_order.update(order_status_id: 2)
  #   session[:order_id] = nil
    
  #   respond_to do |format|
  #     format.html { redirect_to root_path, notice: 'Your order has been placed.' }
  #     #format.json { render :show, status: :ok, location: @portion }
  #   end

  # end  

private
  def order_item_params
    params.require(:order_item).permit(:qty, :product_id)
  end

end
