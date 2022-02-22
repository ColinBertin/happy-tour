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

  kim = User.new(
    email: "blufairie@gmail.com",
    first_name: "Kim",
    last_name: "Methakullachat",
    age: 32,
    password: "123456"
  )
  kim.save!

  takeshi = User.new(
    email: "takeshi@gmail.com",
    first_name: "Takeshi",
    last_name: "Shinohara",
    age: 33,
    password: "123456"
  )
  takeshi.save!

  colin = User.new(
    email: "colin@gmail.com",
    first_name: "Colin",
    last_name: "Bertin",
    age: 34,
    password: "123456"
  )
  colin.save!

puts "making 10 fake tours"
50.times do
  tour = Tour.new(
  name: Faker::Beer.name,
  address: "#{Faker::Address.street_address}",
  price: Faker::Number.within(range: 1000..5000),
  content: "#{Faker::Lorem.paragraph(sentence_count: 10)}"
)
users = [kim, takeshi, colin]
  tour.user = users.sample
  tour.save!
end

  puts "#{Tour.count} tours have been created"
