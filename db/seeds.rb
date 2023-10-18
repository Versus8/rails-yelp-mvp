# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
froggy = {name: "Froggy", address: "1 richmount boulevard, London E6 9DR", category: "french"}
une_fois = {name: "Une fois", address: "45 belgium avenue, London I6 8FT", category: "belgian"}
samurai = {name: "Samurai", address: "987 japanese street, London R4 7YU", category: "japanese"}

[dishoom, pizza_east, froggy, une_fois, samurai].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
