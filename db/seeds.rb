# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# require "json"
require "open-uri"

# url = "https://swapi.dev/api/starships/?page=2"
# ship_serialized = URI.open(url, "Content-Type" => "application/json").read # returns a string from the API

# ships = JSON.parse(ship_serialized)["results"] # parses string to a hash

# ships.each do |ship| # looping to create new ships
#   Ship.create!(name: ship["name"], description: ship["model"], user_id: 1)
# end

Ship.destroy_all

ship1 = Ship.create(name: "CR90 corvette", model: "CR90 corvette", cost: "3500000", length: "150", atmospheric_speed: "950", crew: "30-165", passengers: "600", user_id: 1)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlOXRuy5qKYoSdYVXv8XseIll_WQs1zM9Blw&usqp=CAU")
ship1.photo.attach(io: file, filename: "CR90_corvette_image", content_type: "image/png")
p "#{Ship.last.name} done"

ship2 = Ship.create(name: "Star Destroyer", model: "Imperial I-class Star Destroyer", cost: "150000000", length: "1,600", atmospheric_speed: "975", crew: "47,060", passengers: "n/a", user_id: 1)
file = URI.open("https://www.denofgeek.com/wp-content/uploads/2016/01/interdictor-star-destroyer.jpg")
ship2.photo.attach(io: file, filename: "star_destroyer_image", content_type: "image/png")
p "#{Ship.last.name} done"

ship3 = Ship.create(name: "Sentinel-class landing craft", model: "Sentinel-class landing craft", cost: "240000", length: "38", atmospheric_speed: "1000", crew: "5", passengers: "75", user_id: 1)
file = URI.open("https://www.denofgeek.com/wp-content/uploads/2016/01/lambda-class-shuttle.jpg")
ship3.photo.attach(io: file, filename: "landing_craft_image", content_type: "image/png")
p "#{Ship.last.name} done"

ship4 = Ship.create(name: "Death Star", model: "DS-1 Orbital Battle Station", cost: "1000000000000", length: "120000", atmospheric_speed: "n/a", crew: "342,953", passengers: "843,342", user_id: 1)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRagoBeuGuj3toGY4xZ191CKvS_0a_l9n-jg&usqp=CAU")
ship4.photo.attach(io: file, filename: "death_star_image", content_type: "image/png")
p "#{Ship.last.name} done"

ship5 = Ship.create(name: "Millennium Falcon", model: "YT-1300 light freighter", cost: "100000", length: "34.37", atmospheric_speed: "1050", crew: "4", passengers: "6", user_id: 1)
file = URI.open("https://www.denofgeek.com/wp-content/uploads/2016/01/millennium-falcon.jpg")
ship5.photo.attach(io: file, filename: "millennium_falcon_image", content_type: "image/png")
p "#{Ship.last.name} done"

ship6 = Ship.create(name: "Y-wing", model: "BTL Y-wing", cost: "134999", length: "14", atmospheric_speed: "1000", crew: "2", passengers: "0", user_id: 1)
file = URI.open("https://www.denofgeek.com/wp-content/uploads/2019/02/star-wars-y-wing.jpeg")
ship6.photo.attach(io: file, filename: "y_wing_image", content_type: "image/png")
p "#{Ship.last.name} done"

ship7 = Ship.create(name: "X-wing", model: "T-65 X-wing", cost: "149999", length: "12.5", atmospheric_speed: "1050", crew: "1", passengers: "0", user_id: 1)
file = URI.open("https://www.denofgeek.com/wp-content/uploads/2019/12/x-wing.jpg?w=1024")
ship7.photo.attach(io: file, filename: "x_wing_image", content_type: "image/png")
p "#{Ship.last.name} done"

ship8 = Ship.create(name: "Executor", model: "Executor-class star dreadnought", cost: "1143350000", length: "19000", atmospheric_speed: "n/a", crew: "279,144", passengers: "3800", user_id: 1)
file = URI.open("https://www.denofgeek.com/wp-content/uploads/2016/01/super-star-destroyer_0.jpg")
ship8.photo.attach(io: file, filename: "executer_dreadnought_image", content_type: "image/png")
p "#{Ship.last.name} done"

ship9 = Ship.create(name: "Rebel transport", model: "GR-75 medium transport", cost: "550", length: "90", atmospheric_speed: "650", crew: "6", passengers: "90", user_id: 1)
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFj7USWP-oA_J5v_Zsith2PO9Axaq_m1ZIEQ&usqp=CAU")
ship9.photo.attach(io: file, filename: "gr75_transporter_image", content_type: "image/png")
p "#{Ship.last.name} done"

# ship10 = Ship.create(name: "Slave 1", model: "Firespray-31-class patrol and attack", cost: "482,394", length: "21.5", atmospheric_speed: "1000", crew: "1", passengers: "6", user_id: 1)
# file = URI.open("data:image/jpeg;base64,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")
# ship10.photo.attach(io: file, filename: "slave1_image", content_type: "image/png")
# p "#{Ship.last.name} done"
