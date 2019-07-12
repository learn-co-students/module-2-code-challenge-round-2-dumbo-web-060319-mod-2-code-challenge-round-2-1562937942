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

rest1 = Restaurant.create(name: "Pizza", address: "New York")
rest2 = Restaurant.create(name: "Ice Cream", address: "Los Angeles")
rest3 = Restaurant.create(name: "Pancakes", address: "Ihop Town")
rest4 = Restaurant.create(name: "Candy Shop", address: "Candy Town")

pizza1 = Pizza.create(name: "Pep", ingredients: "Pepporoni", restaurant: rest1)