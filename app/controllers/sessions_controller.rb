class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_id(params[:id])
  	if user
  		session[:user_id] = user.id
      order = Order.order('id DESC').first
      if order.order_items.where(:user_id => user.id).empty?
        redirect_to new_restaurant_order_order_item_path(order.restaurant, order), :notice => "Logged in!"
  	  else
        redirect_to restaurant_order_order_item_path(order.restaurant, order, order.order_items.where(:user_id => user.id).first.id)
      end
    else
  		flash.now.alert = "Invalid name"
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "Logged out"
  end
end
