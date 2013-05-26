class OrderItemsController < ApplicationController

	def new
		@restaurant = Restaurant.find(params[:restaurant_id])
		@order = Order.find(params[:order_id])
		@order_item = OrderItem.new
		
	end

  def create
  	@restaurant = Restaurant.find(params[:restaurant_id])
		@order = Order.find(params[:order_id])
  	@order_item = OrderItem.new(params[:order_item])
    @order_item.order_id = params[:order_id]
  	@order_item.user = current_user

  	@order_item.save
  	redirect_to restaurant_order_order_item_path(@restaurant, @order, @order_item), notice: 'Order was successfully created.'
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
  	@order_item = OrderItem.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.find(params[:order_id])
    @order_item = OrderItem.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.find(params[:order_id])
    @order_item = OrderItem.find(params[:id])

    respond_to do |format|
      if @order_item.update_attributes(params[:order_item])
        format.html { redirect_to restaurant_order_order_item_path(@restaurant, @order, @order_item), notice: 'Your order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_order_order_item.errors, status: :unprocessable_entity }
      end
    end
  end
end
