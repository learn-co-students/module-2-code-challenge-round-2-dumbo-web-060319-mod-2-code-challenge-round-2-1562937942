class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @restaurants = Restaurant.all
    @pizza = Pizza.new
    end

  def create
    @pizza = Pizza.create(pizza_params)
    redirect_to pizzas_path(@pizza)
    end
end

private
 def pizza_params

      params.require(:pizza).permit(:name ,:restaurant_id)
 end
