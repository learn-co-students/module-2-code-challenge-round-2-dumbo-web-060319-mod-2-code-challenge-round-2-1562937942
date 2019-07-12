class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end


  def new
   @pizza = Pizza.new
  end

  def show
    get_pizza
  end

  def create
        @pizza = Pizza.create(pizza_params)
        @restaurants = Restaurant.all
        @restaurant = Restaurant.find(params[:id]) ??????

        if @pizza.valid?
          redirect_to @restaurant
        else
          render :new
      end
    end


  private

  def pizza_params
   params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end

  def get_pizza
    @pizza = Pizza.find(params[:id])
  end

end
