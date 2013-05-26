class OrdersController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
  	@orders = Order.all
  end

  def create
  	@order = Order.new(:restaurant_id => params[:restaurant_id])
  	respond_to do |format|
  		@order.save
			format.html { redirect_to restaurant_order_path(@order.restaurant, @order), notice: 'New form created'}
			format.json { render json: @order, status: :created, location: @order}
  	end
  end

  def destroy
  	@order = Order.find(params[:id])
  	@order.destroy

  	respond_to do |format|
  		format.html { redirect_to orders_url }
  		format.json { head :no_content }
  	end
  end
  
  def new
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.find(params[:id])
    @order_item = OrderItem.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end
end
