class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurant.all
    if params[:search]
      @restaurant_search = Restaurant.search(params[:search])
      redirect_to restaurant_path
      #NOTE: I was unclear as to whether we should be redirecting to given search's show page, 
      #or to just show that one restaurant on the index. 
      #I attempted show but didn't quiet get the route right I don't think.
    end 
  end

  def show 
    @restaurant = Restaurant.find(params[:id])
  end 



end
