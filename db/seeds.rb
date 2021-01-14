puts "Deleting all restaurants..."
Restaurant.destroy_all

puts "Creating restaurants..."
# Generate 5 restaurants
(1..5).each do |r|
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORY.sample
  )
end

puts "Completed!"
