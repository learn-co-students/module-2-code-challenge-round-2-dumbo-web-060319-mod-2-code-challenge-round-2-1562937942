class RestaurantsController < ApplicationController
  def index
    if params[:search]
      @restaurants = Restaurant.where("name LIKE ?", params[:search])
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :address,
      :search
    )
  end

end
