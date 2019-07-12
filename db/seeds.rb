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
Pizza.destroy_all
 
pizzaplace1 = Restaurant.create(name: "Pizza Palace", address: "My Tia's House")
pizzaplace2 = Restaurant.create(name: "OMG Pizza", address: "My Mom's House" )
pizzaplace3 = Restaurant.create(name: "Harlem Pizza", address: "Harlies")

pizza1 = Pizza.create(name: "Cheezey Boo", ingredients: "Three Cheeses", restaurant_id: 1)
pizza2 = Pizza.create(name: "Eat Me Now", ingredients: "Dank Stuff", restaurant_id: 2)
pizza3 = Pizza.create(name: "Tummy Yummy", ingredients: "Pizza Stuff", restaurant_id: 3)





