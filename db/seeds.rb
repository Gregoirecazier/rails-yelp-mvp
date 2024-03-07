# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 07667672, category: "chinese"}
pizza_east =  {name: "Pizza East", address: "9 Peace St, London E2 2PL", phone_number: 07075, category: "italian"}
marcos = {name: "Marcos", address: "109 john's St, London D27 7JE", phone_number: 076665, category: "belgian"}
france = {name: "France", address: "7 France St, London E2 7JE", phone_number: 07676575, category: "french"}
sushi = {name: "sushi", address: "7 Suzuki St, London E2 7JE", phone_number: 07625, category: "japanese"}

[dishoom, pizza_east, marcos, france, sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
