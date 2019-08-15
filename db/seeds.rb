# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first


puts "seeding new powers"

flight = Power.new(
    name: "Flight",
    description: "an act or instance of passing through the air by the use of wings or anything else"
)

flight.save!

p teleportation = Power.new(
    name: "Teleportation",
    description: "Ability to transport a person or object instantly from one place to another"
)

teleportation.save!

p high_velocity = Power.new(
    name: "High velocity",
    description: "Capable of acting or moving quickly"
)

high_velocity.save!

p incredible_luck = Power.new(
    name: "Incredible Luck",
    description: "Don't ever ever bet with this guy mate"
)

incredible_luck.save!

p nyctalopia = Power.new(
    name: "Nyctalopia",
    description: "Ability to see perfectly in the darkness"
)

nyctalopia.save!

p telepathy = Power.new(
    name: "Telepathy",
    description: "the ability to know what is in someone else's mind, or to communicate with someone mentally, without using words or other physical signals"
)

telepathy.save!

p multiply = Power.new(
    name: "Multiply",
    description: "Replicate himself as many times he desire"
)

multiply.save!

p time_travel = Power.new(
  name: "Time travel",
  description: "Travel through time into the past or the future"
)

time_travel.save!

p regeneration = Power.new(
  name: "Regeneration",
  description: "To grow again, or to make something grow again, for example, new tissue or a new part"
)

regeneration.save!

p metamorphosis = Power.new(
  name: "Metamorphosis",
  description: " Change of the form or nature of a thing or person into a completely different one."
)

metamorphosis.save!

p indestructible = Power.new(
  name: "Indestructible",
  description: "Resist to everything"
)

indestructible.save!

p great_strength = Power.new(
  name: "Great strength",
  description: "Incredibely strong"
)

great_strength.save!






puts "seeding sps"

p superhero = Superhero.new(
    name: "Iron Man",
    bio: "Very strong dude",
    image: "https://i.pinimg.com/736x/e9/79/01/e97901ac963823878b70024959d56743.jpg",
    price_per_day: 10,
    user_id:  1,
    power: flight
)

p superhero2 = Superhero.new(
    name: "Captain america",
    bio: "Very strong dude",
    image: "https://i.pinimg.com/736x/e9/79/01/e97901ac963823878b70024959d56743.jpg",
    price_per_day: 10,
    user_id:  1,
    power: flight
)



superhero.save!
superhero2.save!

puts "Done with the seed!"


