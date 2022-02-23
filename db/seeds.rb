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
User.destroy_all

  kim = User.new(
    email: "test@gmail.com",
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

puts "making 5 fake tours"

#   tour = Tour.new(
#   name: Faker::Beer.name,
#   address: "#{Faker::Address.street_address}",
#   price: Faker::Number.within(range: 1000..5000),
#   content: "#{Faker::Lorem.paragraph(sentence_count: 10)}"
#   user: colin
# )
# tour.save!

kirin = Tour.new(
  name: "Kirin Lovers",
  address: "1 Chome-17-1 Namamugi, Tsurumi Ward, Yokohama, Kanagawa 230-8628",
  price: 5000,
  content: "As beer is the most popular alcoholic drink in Japan there are plenty of interesting beers and beer history to discover. Yokohama Factory is one of nine factories of the Kirin Brewery Company, Limited (Chitose, Sendai, Toride, Yokohama, Nagoya, Shiga, Kobe, Okayama, and Fukuoka). Yokohama factory offers free tours that last around 80 minutes.
  A Tour of the Beer Factory
  The tour winds its way arund parts of the factory, offering views from above through observation windows of various parts of the manufacturing process. As you watch, thousands of cans and bottles of beer go shooting through factory machines at incredibly high speeds! According to the guide, 2000 cans of beer are filled and packed each and every minute. Near the end of the tour, a series of panels of Kirin’s history are on display.
  Beer Tasting
  As the tour nears completion you arrive at the “tasting bar”. Here, you receive tickets that you exchange for three glasses of fresh beer—your choice. The selections on tap are “Ichiban-shibori”, “Lager”, and “Stout” (black beer). The beers really hit the spot after walking through the factory.
  If you are curious about Japanese beer and how it is manufactured, taking a tour at Kirin Beer Village in Yokohama is a very good experience and a lot of fun. As you also receive three different types of beers for free you might like it so much that you go there everyday!
  Kirin Beer Village in Yokohama is a 7-minute walk from Nama-mugi Station on the Keikyu line. The tours are given to groups of between two to 35 people every 40 minutes, starting at 10:00 AM and finishing at 4:00 PM.",
  start_time: 16,
  end_time: 18,
  user: kim
)
kirin.save!

asahi = Tour.new(
  name: "Good Times With Asahi",
  address: "1223 Nuda, Minamiashigara, Kanagawa 250-0106",
  price: 5500,
  content: "As beer is the most popular alcoholic drink in Japan there are plenty of interesting beers and beer history to discover. Kanagawa Factory is one of nine factories of the Kirin Brewery Company, Limited (Chitose, Sendai, Toride, Yokohama, Nagoya, Shiga, Kobe, Okayama, and Fukuoka). Yokohama factory offers free tours that last around 80 minutes.
  A Tour of the Beer Factory
  The tour winds its way arund parts of the factory, offering views from above through observation windows of various parts of the manufacturing process. As you watch, thousands of cans and bottles of beer go shooting through factory machines at incredibly high speeds! According to the guide, 2000 cans of beer are filled and packed each and every minute. Near the end of the tour, a series of panels of Kirin’s history are on display.
  Beer Tasting
  As the tour nears completion you arrive at the “tasting bar”. Here, you receive tickets that you exchange for three glasses of fresh beer—your choice. The selections on tap are “Ichiban-shibori”, “Lager”, and “Stout” (black beer). The beers really hit the spot after walking through the factory.
  If you are curious about Japanese beer and how it is manufactured, taking a tour at Kirin Beer Village in Yokohama is a very good experience and a lot of fun. As you also receive three different types of beers for free you might like it so much that you go there everyday!
 Asahi Beer Village in Yokohama is a 7-minute walk from Nama-mugi Station on the Keikyu line. The tours are given to groups of between two to 35 people every 40 minutes, starting at 10:00 AM and finishing at 4:00 PM.",
  start_time: 16,
  end_time: 18,
  user: kim
)
asahi.save!

sapporo = Tour.new(
  name: "Sapporo Beer",
  address: "708-1 Hamatome, Yaizu, Shizuoka 425-0012",
  price: 5500,
  content: "As beer is the most popular alcoholic drink in Japan there are plenty of interesting beers and beer history to discover. Sapporo Factory is one of nine factories of the Kirin Brewery Company, Limited (Chitose, Sendai, Toride, Yokohama, Nagoya, Shiga, Kobe, Okayama, and Fukuoka). Yokohama factory offers free tours that last around 80 minutes.
  A Tour of the Beer Factory
  The tour winds its way arund parts of the factory, offering views from above through observation windows of various parts of the manufacturing process. As you watch, thousands of cans and bottles of beer go shooting through factory machines at incredibly high speeds! According to the guide, 2000 cans of beer are filled and packed each and every minute. Near the end of the tour, a series of panels of Kirin’s history are on display.
  Beer Tasting
  As the tour nears completion you arrive at the “tasting bar”. Here, you receive tickets that you exchange for three glasses of fresh beer—your choice. The selections on tap are “Ichiban-shibori”, “Lager”, and “Stout” (black beer). The beers really hit the spot after walking through the factory.
  If you are curious about Japanese beer and how it is manufactured, taking a tour at Kirin Beer Village in Yokohama is a very good experience and a lot of fun. As you also receive three different types of beers for free you might like it so much that you go there everyday!
  Kirin Beer Village in Yokohama is a 7-minute walk from Nama-mugi Station on the Keikyu line. The tours are given to groups of between two to 35 people every 40 minutes, starting at 10:00 AM and finishing at 4:00 PM.",
  start_time: 11,
  end_time: 13,
  user: kim
)
sapporo.save!

ebisu = Tour.new(
  name: "Ebisu Garden Place",
  address: "150-8522 Tokyo, Shibuya City, Ebisu, 4 Chome−20−1 ",
  price: 6500,
  content: "As beer is the most popular alcoholic drink in Japan there are plenty of interesting beers and beer history to discover. Sapporo Factory is one of nine factories of the Kirin Brewery Company, Limited (Chitose, Sendai, Toride, Yokohama, Nagoya, Shiga, Kobe, Okayama, and Fukuoka). Yokohama factory offers free tours that last around 80 minutes.
  A Tour of the Beer Factory
  The tour winds its way arund parts of the factory, offering views from above through observation windows of various parts of the manufacturing process. As you watch, thousands of cans and bottles of beer go shooting through factory machines at incredibly high speeds! According to the guide, 2000 cans of beer are filled and packed each and every minute. Near the end of the tour, a series of panels of Kirin’s history are on display.
  Beer Tasting
  As the tour nears completion you arrive at the “tasting bar”. Here, you receive tickets that you exchange for three glasses of fresh beer—your choice. The selections on tap are “Ichiban-shibori”, “Lager”, and “Stout” (black beer). The beers really hit the spot after walking through the factory.
  If you are curious about Japanese beer and how it is manufactured, taking a tour at Kirin Beer Village in Yokohama is a very good experience and a lot of fun. As you also receive three different types of beers for free you might like it so much that you go there everyday!
  Kirin Beer Village in Yokohama is a 7-minute walk from Nama-mugi Station on the Keikyu line. The tours are given to groups of between two to 35 people every 40 minutes, starting at 10:00 AM and finishing at 4:00 PM.",
  start_time: 11,
  end_time: 13,
  user: takeshi
)
ebisu.save!

hoegaarden = Tour.new(
  name: "Hoegaarden Brewery",
  address: "150-8522 Tokyo, Shibuya City, Ebisu, 4 Chome−20−1 ",
  price: 6500,
  content: "As beer is the most popular alcoholic drink in Japan there are plenty of interesting beers and beer history to discover. Sapporo Factory is one of nine factories of the Kirin Brewery Company, Limited (Chitose, Sendai, Toride, Yokohama, Nagoya, Shiga, Kobe, Okayama, and Fukuoka). Yokohama factory offers free tours that last around 80 minutes.
  A Tour of the Beer Factory
  The tour winds its way arund parts of the factory, offering views from above through observation windows of various parts of the manufacturing process. As you watch, thousands of cans and bottles of beer go shooting through factory machines at incredibly high speeds! According to the guide, 2000 cans of beer are filled and packed each and every minute. Near the end of the tour, a series of panels of Kirin’s history are on display.
  Beer Tasting
  As the tour nears completion you arrive at the “tasting bar”. Here, you receive tickets that you exchange for three glasses of fresh beer—your choice. The selections on tap are “Ichiban-shibori”, “Lager”, and “Stout” (black beer). The beers really hit the spot after walking through the factory.
  If you are curious about Japanese beer and how it is manufactured, taking a tour at Kirin Beer Village in Yokohama is a very good experience and a lot of fun. As you also receive three different types of beers for free you might like it so much that you go there everyday!
  Kirin Beer Village in Yokohama is a 7-minute walk from Nriama-mugi Station on the Keikyu line. The tours are given to groups of between two to 35 people every 40 minutes, starting at 10:00 AM and finishing at 4:00 PM.",
  start_time: 14,
  end_time: 16,
  user: colin
)
hoegaarden.save!

guiness = Tour.new(
  name: "Guinness Storehouse",
  address: "St. James's Gate, Dublin 8, D08 VF8H, Ireland",
  price: 10_000,
  content: "Making innovative beer requires an unprecedented pioneering spirit and an indomitable spirit of pursuing perfection. In 1759, Arthur Guinness signs a 9000-year lease with St. James Gate Brewery. Shortly thereafter, Guinness began to entertain in various countries across the sea. Guinness's pioneering spirit has been passed down uninterrupted and has continued to evolve over time. As long as we have beer to continue to make, we will continue to move forward.",
  start_time: 9,
  end_time: 11,
  user: takeshi
)
guiness.save!

singha = Tour.new(
  name: "Boon Rod Brewery",
  address: "999 Samsen Road, Dusit, Bangkok 10300 Thailand",
  price: 3000,
  content: "Boon Rawd Brewery was the first to open in Thailand and produces its beer under the brand name of Singha. It was founded in the early 1930s by Boonrawd Sreshthaputra, who had received the title of Phraya Bhirom Bhakdi from HM King Prajadhipok. The brewery remains under the management of his descendants, who use Bhirom Bhakdi as their family name.

  The Singha is an Asian lion, but in both Hindu and Thai traditional tales, it is a powerful mythological creature. It was chosen because it is an easily recognizable symbol. The Garuda on the bottle's neck shows Boonrawd Brewery's royal approval, which is granted only to companies with a long-standing favorable reputation. It received this on 25 October 1939, by a royal warrant signed by King Rama VII's Regent. Boon Rawd is the only brewery in Thailand to receive such a right.[4]

  In 1994, Boon Rawd Brewery bought a brewery in Hartmannsdorf and another in Mittweida, Saxony. Until 2001, these had produced Singha Gold for the European market under contract, although Singha beer itself has always been brewed in Thailand. Today, all Singha brands are only made in Thailand.",
  start_time: 10,
  end_time: 12,
  user: kim
)
singha.save!

blanche = Tour.new(
  name: "Blanche de Bruxelles",
  address: "102-0084 Tokyo, Chiyoda City, Nibancho, 5-4",
  price: 6000,
  content: "The Lefebvre brewery created this wonderful brew and proudly presents this product at our online store. Blanche de Bruxelles is white coloured and has quite a full and creamy head. This glorious craft beer has a beautiful body and a wonderful aroma. 5 generations ago the Lefebvre brewery started brewing this gorgeous wheat beer. They use water, barley malt, wheat, hop, sugar, yeast and coriander. The brewery advises to serve this bright beer at 2 to 5°C.",
  start_time: 10,
  end_time: 12,
  user: colin
)
blanche.save!

  puts "#{Tour.count} tours have been created"
