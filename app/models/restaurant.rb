class Restaurant < ApplicationRecord
  has_many :pizzas

  def self.search(search)
	if search
	  restaurant = Restaurant.find_by(name: search)
	  if restaurant
	  	[restaurant]
	  else
	  	Restaurant.all
	  end
	else
	  Restaurant.all
	end
  end
end
