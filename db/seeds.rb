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

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Pizza Hut", address: "Corroios", phone_number:"123456789", category:"italian")
puts "Created Pizza Hut"
Restaurant.create!(name: "Misu Ramen", address: "Marquês Pombal", phone_number:"987654321", category:"japanese")
puts "Created Misu Ramen"
Restaurant.create!(name: "Baguete Magnifique", address: "Baixa do Chiado", phone_number:"564737890", category:"french")
puts "Created Baguete Magnifique"
Restaurant.create!(name: "Wok to Walk", address: "Almada Forum", phone_number:"125986532", category:"chinese")
puts "Created Wok to Walk"
Restaurant.create!(name: "Brasserie de la Ville", address: "Bélgica", phone_number:"126538967", category:"belgian")
puts "Created Brasserie de la Ville"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
