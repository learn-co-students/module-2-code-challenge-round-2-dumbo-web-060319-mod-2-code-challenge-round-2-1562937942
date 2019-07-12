class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
    redirect_to restaurants_path(@pizza.restaurant)
    else
      flash[:errors] = @pizza.errors.full_messages
      redirect_to pizzas_new_path
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end 

  private
  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
