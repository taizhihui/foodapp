class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      session[:user_id] = @user.id
  		order = Order.order('id DESC').first
      redirect_to new_restaurant_order_order_item_path(order.restaurant, order), 
      :notice => "Signed up!"
  	else
  		render "new"
  	end
  end


end
