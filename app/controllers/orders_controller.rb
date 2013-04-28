class OrdersController < ApplicationController
  def index
  	@orders = Order.all
  end

  def new
  	@order = Order.new

  	respond_to do |format|
  		format.html
  		format.json { render json: @order }
  	end
  end

  def create

  	@order = Order.new(params[:order])

  	respond_to do |format|
  		if @order.save
  			format.html { redirect_to @order, notice: 'New form created'}
  			format.json { render json: @order, status: :created, location: @order}
  		else
  			format.html { render action: "new"}
  			format.json { render json: @order.errors, status: :unprocessable_entity}
  		end
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
  

end
