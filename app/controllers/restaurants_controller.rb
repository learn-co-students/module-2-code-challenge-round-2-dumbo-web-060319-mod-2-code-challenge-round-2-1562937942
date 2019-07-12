class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # @find_spot = Restaurant.find(params[:search])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :search)
  end
end
