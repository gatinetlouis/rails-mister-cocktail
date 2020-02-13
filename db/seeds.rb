# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "There are #{Ingredient.count} ingredients"
puts "Deleting all ingredients"
Ingredient.destroy_all
puts "Creating ingredients"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
puts "There are #{Ingredient.count} ingredients"

puts "========================="

puts "There are #{Cocktail.count} cocktails"
puts "Deleting all cocktails"
Cocktail.destroy_all
puts "Creating cocktails"
Cocktail.create(name: "mojito")
Cocktail.create(name: "Gin tonic")
Cocktail.create(name: "Cognac Schweppes mint")
puts "There are #{Cocktail.count} cocktails"

puts "========================="

puts "There are #{Dose.count} doses"
puts "Deleting all doses"
Dose.destroy_all
puts "Creating doses"
Dose.create(description: "6cl", cocktail_id: Cocktail.first.id, ingredient_id: Ingredient.first.id)
Dose.create(description: "2cl", cocktail_id: Cocktail.second.id, ingredient_id: Ingredient.second.id)
Dose.create(description: "4cl", cocktail_id: Cocktail.third.id, ingredient_id: Ingredient.third.id)
puts "There are #{Dose.count} doses"
