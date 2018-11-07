# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # boat = Boat.create(name: "Titanic", description: "Boat for rent", location: "Amsterdam",
  #   price_per_hour: 10, hours: 2, capacity: 200, has_license: false, user_id: 1)

  # user = User.create(first_name: "Jack", last_name: "Sparrow", email: "jacksparrow@gmail.com",
  #   password: "jacksparrow1008")

  # boat = Boat.create(name: "Titanic", description: "Boat for rent", location: "Amsterdam",
  #   price_per_hour: 10, hours: 2, capacity: 200, has_license: false, user_id: 1)

  # user = User.create(first_name: "Jack", last_name: "Sparrow", email: "jacksparrow@gmail.com",
  #   password: "jacksparrow1008")

puts "Seeding..."

Booking.destroy_all
Boat.destroy_all
User.destroy_all

user1 = User.create!(first_name: "Jesus", last_name: "Christ", email: "jesus@gmail.com", password: "123secret")
user2 = User.create!(first_name: "Mohammed", last_name: "The Prophet", email: "mohammed@gmail.com", password: "123secret")
user3 = User.create!(first_name: "Buddha", last_name: "Bringslight", email: "buddha@gmail.com", password: "123secret")
user4 = User.create!(first_name: "Lucifer", last_name: "Satan", email: "satanic-rituals@gmail.com", password: "123secret")
user5 = User.create!(first_name: "Monica", last_name: "Clinton", email: "monica-lewinsky@gmail.com", password: "123secret")
user6 = User.create!(first_name: "Donald", last_name: "Duck", email: "donald-trump@gmail.com", password: "123secret")
# Boat.destroy!

boat = Boat.create!(
  name: "HOLY SHIT",
  description: "'HOLY SHIT' is truly a royal saloon boat, it was built in 1930 at a famous shipyard in Amsterdam. Queen Wilhelmina has been seen regularly with 'HOLY SHIT' sailing across the Amstel.
  This beautiful saloon boat is suitable for groups up to 19 people who want to enjoy luxury in Amsterdam.
  Thanks to 'HOLY SHIT', the large skylight and the large windows you can enjoy natural light and perfect views all around the saloon boat, without being affected by satan.",
  location: "Amsterdam",
  price_per_hour: 10,
  hours: 2,
  capacity: 200,
  has_license: false,
  user_id: user1.id)


extra_boat = Boat.create!(
  name: "AQUA-HOLIC",
  description: "Saloon boat 'Aqua Holic' was built in 1929 by the firm 'Middle East'.
  The interior is Art Deco / Amsterdam school style, where much is made of dates.
  Due to the warm appearance of the old woodwork, together with the granite countertops and the stained glass, there is a serene war-zone atmosphere in 'AQUA-HOLIC' saloon.
  In the summer, the windows can be removed and saloon boat 'Aqua Holic' is completely open!",
  location: "Amsterdam",
  price_per_hour: 50,
  hours: 1,
  capacity: 6,
  has_license: false,
  user_id: user2.id)


boat2 = Boat.create!(
  name: "COUPLES THERAPY",
  description: "'COUPLES THERAPY' takes you randomly to Paris. If your relationship has suffered lately, then 'COUPLES THERAPY' is right for you!
  If you're looking for a relaxing cruise vacation- and what better way to do that than in a fully-stocked spa with happy ends?
  'COUPLES THERAPY', onboard Lotus Spa features a wide range of treatments designed to send couples to a world of relaxation and harmony.
  The spa operates on an 'a la carte' model, where each service can also be booked together.
  However, passengers can also opt to schedule a full day of body to body massage, if they so desire. ",
  location: "Amsterdam",
  price_per_hour: 5,
  hours: 2,
  capacity: 8,
  has_license: true,
  user_id: user3.id)


boat3 = Boat.create!(
  name: "POWER BOAT",
  description: "'POWER BOAT' Guide describes the 37 Egg Harbor as a 'handsome convertible with signature Egg Harbor styling' that impresses anglers, cruisers alike with luxury interior and top shelf workmanship.
  Luxurious two-stateroom layout is an impressive display of varnished teak woodwork, designer fabrics and furnishings.
  Big cockpit is fitted with transom door, tackle center, direct engine room access, and transom live-well.
  Flybridge is large for a 37-footer with room to walk behind both helm chairs.
  Standard Caterpillar 420 hp diesels cruise at 27-28 knots.
  Off The Chart   raises fish!
  If you are a serious fisherman, recreational, tournament or commercial, you won't want to miss this one.
  Serious fishing by day and comfortable and elegant interior for entertaining and relaxing.",
  location: "Haarlem",
  price_per_hour: 25,
  hours: 5,
  capacity: 20,
  has_license: false,
  user_id: user4.id)

boat4 = Boat.create!(
  name: "OFF THE GRID",
  description: "OFF THE GRID represents a-nearly new example of Ocean Alexander's well designed, built and optioned 90 motoryacht.
  Powered by Caterpillar engines (only 275 hours) and 55kW Kosher generators, all with fully transferable warranties.
  At rest stabilization, large watermaker, bow and stern thrusters, and four large ensuite staterooms are just a few of the many highlights of this exceptionally clean yacht.
  Custom built by a knowledgeable, repeat Ocean Alexander owner.
  OFF THE GRID is a must see for any motoryacht buyer in this range.",
  location: "Haarlem",
  price_per_hour: 25,
  hours: 5,
  capacity: 20,
  has_license: false,
  user_id: user5.id)

boat5 = Boat.create!(
  name: "MARGARITA",
  description: "MARGARITA is part of the very popular Ocean Alexander 74 series of motor yachts.
  MARGARITA was built with all of the upgrades including but not limited to, dual bow anchors, bow and stern thruster, two full sets of washer and dryers, two water heaters and a waste treatment plant.
  With the 1500 HP MTU engines, MARGARITA effortlessly cruises through the seas.
  MARGARITA has always been well taken care of by its owner and is sure to impress.",
  location: "Haarlem",
  price_per_hour: 25,
  hours: 5,
  capacity: 20,
  has_license: false,
  user_id: user6.id)


booking1 = Booking.create!(
  user_id: user3.id,
  boat_id: boat3.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )
