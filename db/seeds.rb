# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Clearing DB'
Flat.destroy_all
puts 'OK!'
puts 'Creating 10 seeds now'
10.times do
  flat = Flat.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.type,
    price_per_night: rand(10..100),
    number_of_guests: rand(1..4)
  )
  flat.save
end
