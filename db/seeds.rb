# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0607080930", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0607080930", category: "chinese")
puts "Created Pizza East"
Restaurant.create!(name: "Ave Romana", address: "86 FM 75011", phone_number: "0607080930", category: "italian")
puts "Created Ave Romana"
Restaurant.create!(name: "Substance", address: "Paris 16", phone_number: "0607080930", category: "french")
puts "Created Substance"
Restaurant.create!(name: "Breizh Café", address: "Odéon", phone_number: "0607080930", category: "french")
puts "Created Breizh Café"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
