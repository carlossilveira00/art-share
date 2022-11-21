# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

20.times do
  Item.create(name: Faker::Name.name, description: Faker::Quote.famous_last_words, value: rand(0..1000), user_id: 1, current_situation: "available", category: ["paitings", "Sculpture"].sample, location: Faker::Address.city )
end
