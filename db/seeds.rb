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
require 'date'

puts 'Cleaning the database...'
Booking.destroy_all
Tour.destroy_all
User.destroy_all

  kim = User.new(
    email: "kim@gmail.com",
    first_name: "Kim",
    last_name: "Methakullachat",
    age: 32,
    password: "123456",
    admin: true
  )
  kim.save!

  takeshi = User.new(
    email: "takeshi@gmail.com",
    first_name: "Takeshi",
    last_name: "Shinohara",
    age: 33,
    password: "123456",
    admin: true
  )
  takeshi.save!

  colin = User.new(
    email: "colin@gmail.com",
    first_name: "Colin",
    last_name: "Bertin",
    age: 34,
    password: "123456",
    admin: true
  )
  colin.save!

puts "making fake tours"

kirin = Tour.new(
  name: "Kirin Lovers",
  address: "1 Chome-7-1 Namamugi, Tsurumi Ward, Yokohama, Kanagawa",
  price: 4000,
  content: "As beer is the most popular alcoholic drink in
  Japan there are plenty of interesting beers and beer history to discover.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 3,
  user: kim
)
kirin.save!

asahi = Tour.new(
  name: "Good Times With Asahi",
  address: "1 Chome-20-1 Namamugi, Tsurumi Ward, Yokohama, Kanagawa",
  price: 400,
  content: "Asahi Beer Hall was opened nearby Kyoto in 1896 to promote the
  companys beer to thirsty tourist. By 1901 it was the second biggest brewery in Japan.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 1,
  user: kim
)
asahi.save!

sapporo = Tour.new(
  name: "Sapporo Beer",
  address: "1 Chome-2-8 Namamugi, Tsurumi Ward, Yokohama, Kanagawa",
  price: 500,
  content: "Sapporo is the oldest brand of beer in Japan. It was first brewed in Sapporo, Japan, in 1876 by brewer Seibei Nakagawa.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 3,
  user: kim
)
sapporo.save!

ebisu = Tour.new(
  name: "Ebisu Garden Place",
  address: "4 Chome-2-8 Shibakoen, Tokyo",
  price: 2000,
  content: "Yebisu Beer was established in 1890. As shipments increased, the brewery got its own railway freight station in 1901. The current JR Ebisu Station, situated closer to Shibuya Station, opened in 1906 for passenger service.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 4,
  user: takeshi
)
ebisu.save!

hoegaarden = Tour.new(
  name: "Hoegaarden Brewery",
  address: "5 Chome-1 Kaigandori, Minato Ward, Osaka",
  price: 3500,
  content: "Hoegaarden is a Belgian witbier named after a small town in the Flemish region of Belgium that is famous for the white style of beer.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 2,
  user: colin
)
hoegaarden.save!

heineken = Tour.new(
  name: "Heineken",
  address: "5 Chome-1 Kaigandori, Minato Ward, Osaka",
  price: 2500,
  content: "Heineken was introduced in 1873 in the Netherlands. On February 10 1864, Gerard Adriaan Heineken bought the haystack brewery in Amsterdam.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 2,
  user: colin
)
heineken.save!

guiness = Tour.new(
  name: "Guinness Storehouse",
  address: "10 Chome-1 Kaigandori, Minato Ward, Osaka",
  price: 10_000,
  content: "Guinness's pioneering spirit has been passed down uninterrupted and has continued to evolve over time.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 1,
  user: colin
)
guiness.save!

singha = Tour.new(
  name: "Boon Rod Brewery",
  address: "999 Samsen Road, Dusit, Bangkok 10300 Thailand",
  price: 300,
  content: "Boon Rawd Brewery was the first to open in Thailand and produces its beer under the brand name of Singha.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 4,
  user: kim
)
singha.save!

chang = Tour.new(
  name: "Elephant Beer",
  address: "100 Samsen Road, Dusit, Bangkok 10300 Thailand",
  price: 200,
  content: "Chang is a delicious beer, the logo is the elephant",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 4,
  user: kim
)
chang.save!

corona = Tour.new(
  name: "Corona",
  address: "Colonia El Parque, Delegación Venustiano Carranza",
  price: 666,
  content: "Corona is the  best beer to enjoy during the pandemic",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 4,
  user: kim
)
corona.save!

tsing = Tour.new(
  name: "TsingTao",
  address: "1 Legislative Council Road, Central, Hong Kong",
  price: 666,
  content: "True HongKong Beer. Tastes like water",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 4,
  user: kim
)
tsing.save!

blanche = Tour.new(
  name: "Blanche de Bruxelles",
  address: "1 Chome-1 Kaigandori, Minato Ward, Osaka",
  price: 6000,
  content: "This glorious craft beer has a beautiful body and a wonderful aroma.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 2,
  user: colin
)
blanche.save!

maredsous = Tour.new(
  name: "Maredsous",
  address: "Rue de Maredsous 11, 5537 Anhée, Belgium",
  price: 800,
  content: "Colin recommends this beer, a must try.",
  start_time: rand(Date.today..Date.today+30.days),
  duration: 2,
  user: colin
)
maredsous.save!

booking_a = Booking.new(
  schedule: "2pm : 4pm",
  confirmation: 0,
  user: colin,
  tour: blanche
)
booking_a.save!

booking_b = Booking.new(
  schedule: "2pm : 4pm",
  confirmation: 0,
  user: colin,
  tour: singha
)
booking_b.save!

booking_c = Booking.new(
  schedule: "2pm : 4pm",
  confirmation: 0,
  user: colin,
  tour: guiness
)
booking_c.save!

  puts "#{Tour.count} tours have been created"
