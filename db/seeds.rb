# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

# Categories for restaurants
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

# Seed 5 valid restaurants
5.times do |index|
  Restaurant.create!(
    name: "Restaurant #{index + 1}",
    address: "Address #{index + 1}",
    phone_number: "123-456-789#{index + 1}",
    category: CATEGORIES.sample
  )
end
