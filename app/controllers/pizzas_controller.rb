class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
  	@pizza = Pizza.new
  end

  def create 
  	@pizza = Pizza.create(pizza_params)
  	flash[:errors] = @pizza.errors.full_messages
  	if @pizza.valid?
  	  redirect_to pizza_path(@pizza)
  	else
  	  redirect_to new_pizza_path
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
