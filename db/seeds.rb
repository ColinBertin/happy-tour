# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# booking
# tour (make 5 tours)
# user

require 'faker'

puts 'Cleaning the database...'
Tour.delete_all

puts "making 10 fake tours"
10.times do
  tour = Tour.new(
  name: Faker::Beer.name,
  address: "#{Faker::Address.street_address}",
  price: Faker::Number.within(range: 1000..5000),
  content: "#{Faker::Lorem.paragraph(sentence_count: 10)}"
)
  tour.user = User.first
  tour.save!
end

  puts "#{Tour.count} tours have been created"
