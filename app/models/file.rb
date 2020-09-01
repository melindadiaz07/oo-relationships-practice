# create files for your ruby classes in this directory
require "./bakery.rb"
require "./ingredient.rb"
require "./dessert.rb"
require "./dessertingredient"


bakery1 = Bakery.new("First Bakery")
bakery2 = Bakery.new("Second Bakery")


icecream = Dessert.new("Ice Cream", bakery1)

cake = Dessert.new("Chocolate Cake", bakery1)

sugar = Ingredient.new("sugar", 90)
flour = Ingredient.new("flour", 40)
oil = Ingredient.new("oil", 100)
chocolate = Ingredient.new("Chocolate sprinkles", 10)
chocolate = Ingredient.new("Chocolate", 10)

icecream.new_ingredient(sugar)
cake.new_ingredient(sugar)
cake.new_ingredient(flour)
cake.new_ingredient(oil)



# icecream.new_ingredient("cream")

# puts icecream.ingredients

# puts bakery2.ingredients

# puts cake.calories


# puts Ingredient.find_all_by_name("flour")

puts bakery1.shopping_list



