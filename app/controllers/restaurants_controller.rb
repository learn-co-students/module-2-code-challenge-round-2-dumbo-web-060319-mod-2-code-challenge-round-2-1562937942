class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

 def show
   get_restaurant
 end

 def new
   @restaurant = Restaurant.new
 end
 
 private

 def restaurant_params
  params.require(:restaurant).permit(:name, :address)
 end

 def get_restaurant
   @restaurant = Restaurant.find(params[:id])
 end


end
