# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

flight = Power.new(
    name: "Flight",
    description: "Very strong dude"
)

flight.save!

superhero = Superhero.new(
    name: "Iron Man",
    bio: "Very strong dude",
    image: "https://i.pinimg.com/736x/e9/79/01/e97901ac963823878b70024959d56743.jpg",
    price_per_day: 10,
    user_id:  1,
    power: flight
)

superhero2 = Superhero.new(
    name: "Captain america",
    bio: "Very strong dude",
    image: "https://i.pinimg.com/736x/e9/79/01/e97901ac963823878b70024959d56743.jpg",
    price_per_day: 10,
    user_id:  1,
    power: flight
)



superhero.save!
superhero2.save!


