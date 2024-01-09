# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Deleting data

puts "Deleting data..."
State.destroy_all


# Creation of States
puts "Creating States"
queretaro = State.create!(name: "Querétaro", address: "16 de septiembre, col centro, queretaro mexico", capital: "Santiago de Querétaro", population: "2.5 millones", life_cost: "$10,000 mxn", weather: "Semiárido", contact_number: "442 506 6096")

puts "States ready"
