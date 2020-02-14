# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
require "open-uri"
# Examples:

Cocktail.destroy_all
puts "There are #{Cocktail.count} cocktails"
Dose.destroy_all
puts "There are #{Dose.count} doses"
Ingredient.destroy_all
puts "There are #{Ingredient.count} ingredients"


puts "Deleting all cocktails"
puts "Creating cocktails"
file = URI.open("https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
mojito = Cocktail.new(name: "Mojito")
mojito.photo.attach(io: file, filename: 'cocktail.jpg', content_type: 'image/jpg')
mojito.save

file = URI.open("https://images.unsplash.com/photo-1453824979084-c8fd42932378?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80")
gin = Cocktail.new(name: "Gin tonic")
gin.photo.attach(io: file, filename: 'cocktail.jpg', content_type: 'image/jpg')
gin.save

file = URI.open('https://images.unsplash.com/photo-1580682769030-c3071911ec72?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
cognac = Cocktail.new(name: "Cognac Schweppes mint")
cognac.photo.attach(io: file, filename: 'cocktail.jpg', content_type: 'image/jpg')
cognac.save

puts "There are #{Cocktail.count} cocktails"
#
puts "Deleting all ingredients"
puts "Creating ingredients"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
puts "There are #{Ingredient.count} ingredients"

puts "========================="


puts "========================="

puts "Deleting all doses"
puts "Creating doses"
Dose.create(description: "6cl", cocktail_id: Cocktail.first.id, ingredient_id: Ingredient.first.id)
Dose.create(description: "2cl", cocktail_id: Cocktail.second.id, ingredient_id: Ingredient.second.id)
Dose.create(description: "4cl", cocktail_id: Cocktail.third.id, ingredient_id: Ingredient.third.id)
puts "There are #{Dose.count} doses"
