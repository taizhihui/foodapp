class ItemsController < ApplicationController
	def create
		#Initial call to find the Restaurant that the item is to be added to
		@restaurant = Restaurant.find(params[:restaurant_id])

		#Create method called on @restaurant.items to automatically link the 
		#item to a particular restaurant
		@item = @restaurant.items.create(params[:item])

		redirect_to restaurant_path(@restaurant)
	end

	def destroy
		@restaurant = Restaurant.find(params[:restaurant_id])
		@item = @restaurant.items.find(params[:id])
		@item.destroy

		redirect_to restaurant_path(@restaurant)
	end

	def edit
		@restaurant = Restaurant.find(params[:restaurant_id])
		@item = @restaurant.items.find(params[:id])
  end

  def update
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@item = @restaurant.items.find(params[:id])

  		if @item.update_attributes(params[:item])
  			redirect_to(@restaurant)
  		end
  end

  	
end
