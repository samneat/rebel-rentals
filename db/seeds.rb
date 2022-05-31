# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

require "json"
require "open-uri"

url = "https://swapi.dev/api/starships/2/"
ship_serialized = URI.open(url).read  # returns a string from the API
ship = JSON.parse(ship_serialized) # parses string to a hash

Ship.create!(name: ship["name"], user_id: "1")
