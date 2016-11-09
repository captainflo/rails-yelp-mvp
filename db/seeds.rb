# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
20.times do |time|
  resto = Restaurant.create(name: Faker::Company.name ,address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.phone_number, category: ["chinese", "italian", "japanese", "french", "belgian"][rand(5)])
  rand(0..5).times do |i|
    review = resto.reviews.new(content: Faker::Company.name , rating: rand(0..5), restaurant_id: rand(1..20))
    review.save
  end
end
