class RestaurantsController < ApplicationController
  def index
    if params[:search]
      @restaurants = Restaurant.search(params[:search])
    else
      @restaurants = Restaurant.all
    end
  end

  def show 
  	@restaurant = Restaurant.find(params[:id])
  end

  private

  	def rest_params
  	  params.require(:restaurant).permit(:name, :address, :search)
  	end
end
