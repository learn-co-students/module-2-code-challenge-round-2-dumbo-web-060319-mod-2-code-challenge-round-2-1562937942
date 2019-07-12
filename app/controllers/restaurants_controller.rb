class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end
end
