puts 'Creating 100 fake restaurants...'
10.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number:  rand(0..5),
    category: "italian"
  )
  restaurant.save!
end
puts 'Finished!'
