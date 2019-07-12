class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.search(params[:name])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

end
