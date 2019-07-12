# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Restaurant.destroy_all

Restaurant.create!([{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
},
                    {
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
},
                    {
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028",
}])

R4 = Restaurant.create(name: "mon n pop", address: "5th ave")
R5 = Restaurant.create(name: "grease", address: "2nd ave")
R6 = Restaurant.create(name: "big slice", address: "8th ave")

Pizza.create!([
  {
    name: "CHeese",
    ingredients: "Cheese, tomnatoe sauce",
    restaurant_id: R4.id,
  },
  {
    name: "Mushroom",
    ingredients: "Cheese, tomnatoe sauce, mushroom",
    restaurant_id: R4.id,
  },
  {
    name: "Veggie",
    ingredients: "Cheese, tomnatoe sauce, onion",
    restaurant_id: R6.id,
  },

])

# Note, my linter is giving me trouble by placing commas at the end of restaurant_id, and at the end of the last hash in the Pizza array
