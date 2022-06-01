# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# require "json"
# require "open-uri"

# url = "https://swapi.dev/api/starships/?page=2"
# ship_serialized = URI.open(url, "Content-Type" => "application/json").read # returns a string from the API

# ships = JSON.parse(ship_serialized)["results"] # parses string to a hash

# ships.each do |ship| # looping to create new ships
#   Ship.create!(name: ship["name"], description: ship["model"], user_id: 1)
# end


ship1 = Ship.create(name: "CR90 corvette", model: "CR90 corvette", cost: "3500000", length: "150", atmospheric_speed: "950", crew: "30-165", passengers: "600", user_id: 1)

ship2 = Ship.create(name: "Star Destroyer", model: "Imperial I-class Star Destroyer", cost: "150000000", length: "1,600", atmospheric_speed: "975", crew: "47,060", passengers: "n/a", user_id: 1)

ship3 = Ship.create(name: "Sentinel-class landing craft", model: "Sentinel-class landing craft", cost: "240000", length: "38", atmospheric_speed: "1000", crew: "5", passengers: "75", user_id: 1)

ship4 = Ship.create(name: "Death Star", model: "DS-1 Orbital Battle Station", cost: "1000000000000", length: "120000", atmospheric_speed: "n/a", crew: "342,953", passengers: "843,342", user_id: 1)

ship5 = Ship.create(name: "Millennium Falcon", model: "YT-1300 light freighter", cost: "100000", length: "34.37", atmospheric_speed: "1050", crew: "4", passengers: "6", user_id: 1)

ship6 = Ship.create(name: "Y-wing", model: "BTL Y-wing", cost: "134999", length: "14", atmospheric_speed: "1000", crew: "2", passengers: "0", user_id: 1)

ship7 = Ship.create(name: "X-wing", model: "T-65 X-wing", cost: "149999", length: "12.5", atmospheric_speed: "1050", crew: "1", passengers: "0", user_id: 1)

ship8 = Ship.create(name: "Executor", model: "Executor-class star dreadnought", cost: "1143350000", length: "19000", atmospheric_speed: "n/a", crew: "279,144", passengers: "3800", user_id: 1)

ship9 = Ship.create(name: "Rebel transport", model: "GR-75 medium transport", cost: "550", length: "90", atmospheric_speed: "650", crew: "6", passengers: "90", user_id: 1)

ship10 = Ship.create(name: "Slave 1", model: "Firespray-31-class patrol and attack", cost: "482,394", length: "21.5", atmospheric_speed: "1000", crew: "1", passengers: "6", user_id: 1)
