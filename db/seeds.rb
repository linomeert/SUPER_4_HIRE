# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first


puts "creating user"

Superhero.destroy_all
Power.destroy_all
User.destroy_all

user1 = User.create(
    email: "test@gmail.com",
    password: "123456",
    first_name: "Bob",
    last_name: "Sponge"
)
  puts "seeding new users"

p user1 = User.create(
    first_name: 'Steve',
    last_name: 'Banner',
    email: 'steevy@gmail.com'
 )

p user2 = User.create(
    first_name: 'Louis',
    last_name: 'Leonard',
    email: 'lleo@hotmail.com'
  )

p user3 = User.create(
    first_name: 'Yann',
    last_name: 'Peeters',
    email: 'Zwartepiet@hotmail.com'
)

p user4 = User.create(
    first_name: 'Michel',
    last_name: 'Houellebecq',
    email: 'particules@gmail.com'
)

p user5 = User.create(
    first_name: 'Stéphane',
    last_name: 'Degroot',
    email: 'bxl4ever@hotmail.com'
)

 puts  "seeding new powers"

 p flight = Power.new(
     name: 'Flight',
     description: 'an act or instance of passing through the air by the use of wings or anything else'
 )

 flight.save!

 p teleportation = Power.new(
     name: 'Teleportation',
     description: 'Ability to transport a person or object instantly from one place to another'
 )

 teleportation.save!

 p high_velocity = Power.new(
     name: 'High velocity',
     description: 'Capable of acting or moving quickly'
 )

 high_velocity.save!

 p incredible_luck = Power.new(
     name: 'Incredible Luck',
     description: 'Dont ever ever bet with this guy mate'
 )

 incredible_luck.save!

 p nyctalopia = Power.new(
     name: 'Nyctalopia',
     description: 'Ability to see perfectly in the darkness'
 )

 nyctalopia.save!

 p telepathy = Power.new(
     name: 'Telepathy',
     description: 'the ability to know what is in someone elses mind, or to communicate with someone mentally, without using words or other physical signals'
 )

 telepathy.save!

 p multiply = Power.new(
     name: 'Multiply',
     description: 'Replicate himself as many times he desire'
 )

 multiply.save!

 p time_travel = Power.new(
   name: 'Time travel',
   description: 'Travel through time into the past or the future'
 )

 time_travel.save!

 p regeneration = Power.new(
   name: 'Regeneration',
   description: 'To grow again, or to make something grow again, for example, new tissue or a new part'
 )

 regeneration.save!

 p metamorphosis = Power.new(
   name: 'Metamorphosis',
   description: 'Change of the form or nature of a thing or person into a completely different one.'
 )

 metamorphosis.save!

 p indestructible = Power.new(
   name: 'Indestructible',
   description: 'Resist to everything'
 )

 indestructible.save!

 p great_strength = Power.new(
   name: 'Great strength',
   description: 'Incredibely strong'
)

 great_strength.save!






 puts "seeding sps"

p iron_man = Superhero.create(
    name: 'Iron Man',
    bio: 'Very strong dude',
    remote_image_url: 'http://nerdist.com/wp-content/uploads/2016/03/Iron-Man.jpg',
    address: "rue de l'abbaye, bruxelles",
    price_per_day: 20,
    user: User.all.sample,
    power: great_strength
)

p joker = Superhero.create(
    name: 'Joker',
    bio: 'The Joker possesses no superhuman abilities, instead using his expertise in chemical engineering to develop poisonous or lethal concoctions, and thematic weaponry, including razor-tipped playing cards, deadly joy buzzers, and acid-spraying lapel flowers.',
    remote_image_url: 'http://nerdist.com/wp-content/uploads/2016/03/Joker.jpg',
    address:  "place sainte catherine, bruxelles",
    price_per_day: 50,
    user: User.all.sample,
    power: incredible_luck
)

p hulk = Superhero.create(
    name: 'Hulk',
    bio: 'Banner is physically transformed into the Hulk when subjected to emotional stress, at or against his will, often leading to destructive rampages and conflicts.',
    remote_image_url:'http://nerdist.com/wp-content/uploads/2016/03/Hulk2.jpg',
    address: "rue des celtes, etterbeek",
    price_per_day: 70,
    user: User.all.sample,
    power: metamorphosis
  )

p superman = Superhero.create!(
    name: 'Superman',
    bio: 'Clark developed various superhuman abilities, such as incredible strength and impervious skin. Beware of the Kryptonite....',
    remote_image_url:'http://nerdist.com/wp-content/uploads/2016/03/Superman.jpg',
    address: "rue mercelis, ixelles",
    price_per_day: 85,
    user: User.all.sample,
    power: flight
)

p batman = Superhero.create(
    name: 'Batman',
    bio: 'Batman operates in the fictional Gotham City with assistance from various supporting characters, including his butler Alfred, police commissioner Jim Gordon, and vigilante allies such as Robin. Unlike most superheroes, Batman does not possess any inhuman superpowers. He does, however, possess a genius-level intellect, is a peerless martial artist, and his vast wealth affords him an extraordinary arsenal of weaponry and equipment. ',
    remote_image_url: 'http://nerdist.com/wp-content/uploads/2016/03/Batman.jpg',
    address: "chaussée de wavre, auderghem",
    price_per_day: 75,
    user: User.all.sample,
    power: great_strength
)

p flash = Superhero.create(
    name: 'Flash',
    bio: 'Flash can move, think, and react at light speeds as well as having superhuman endurance that allows them to run incredible distances.',
    remote_image_url: 'http://nerdist.com/wp-content/uploads/2016/03/Flash.jpg',
    address: "rue des betteraves, anderlecht",
    price_per_day: 65,
    user: User.all.sample,
    power: high_velocity
  )




puts "Done with the seed!"


