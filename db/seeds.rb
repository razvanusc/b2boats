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




user1 = User.create!(first_name: "Frank", last_name: "Alkema", email: "frank@gmail.com", password: "123secret", remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541770415/frank.jpg")
user2 = User.create!(first_name: "Elad", last_name: "Gilo", email: "elad@gmail.com", password: "123secret", remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541770468/ltpj9zumcywcmt2vouxu.jpg")
user3 = User.create!(first_name: "Elvis", last_name: "Döttinger", email: "elvis@gmail.com", password: "123secret", remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541770481/43215015.png")
user4 = User.create!(first_name: "Jordy", last_name: "Kléberg", email: "jordy@gmail.com", password: "123secret", remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541770675/43219127.jpg")
user5 = User.create!(first_name: "Tomas", last_name: "Capponi", email: "tomas@gmail.com", password: "123secret", remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541770505/22945442.jpg")
user6 = User.create!(first_name: "Maxime", last_name: "Fontana", email: "maxime@gmail.com", password: "123secret", remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541770713/txeytyq1djnfqjl74pii.jpg")
# Boat.destroy!




boat1 = Boat.create!(
  name: "Olympia",
  description: "The Olympia - the 'SPACE SHIP' of the Dutch inland waterways.
The 12-person yachts of the 'Olympia'-type are the flagships of the Dutch charter vleet. They offer you a combination of comfort and luxury on water.
The large windows all around the huge living room provide a beautiful view on the Dutch countryside passing by. The low airdraught of the Olympia Supercruiser of only 2,45 m. (with mast laid down) makes it possible to pass most of the bridges without waiting.",
  location: "Amsterdam",
  price_per_hour: 20,
  hours: 2,
  capacity: 12,
  has_license: true,
  category: "Powerboat",
  rating: 5,
  user_id: user1.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541771558/olympia-superkreuzer-huge-006567c25a0f538a.jpg")


boat2 = Boat.create!(
  name: "Aquanaut",
  description: "Inspired by the American trawler yachts, Aquanaut developed a new concept: the European Voyager. Particularly impressive is the successful integration between the classical, rugged lines of the Drifter and the modern lines of the true trawler yacht, she was enthusiastically received by our customers.",
  location: "Tilburg",
  price_per_hour: 30,
  hours: 1,
  capacity: 6,
  has_license: false,
  category: "Powerboat",
  rating: 4,
  user_id: user2.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541772843/proxy.duckduckgo-1.jpg")


boat3 = Boat.create!(
  name: "Bavaria 41",
  description: "The latest model Bavaria 41 Cruiser sailboat is for rent at Brug Jachtverhuur for a very attractive price. This beautiful sailing yacht offers more than enough space for 7 people.
The luxury front cabin has a large bed (2.08 x 2m), plenty of storage space and a private wet room with toilet, sink and shower. Headroom is 1.94 and the ship has large panorma windows and an extra large deck hatch.
The large seating area is easy to convert into a king-size bed. The kitchen has a double sink, cooler, 2 burner gas stove and an oven. The second wet cell also has a toilet, sink and shower. Both rear cabins are spacious and have headroom.
On board you have running (hot) water and in August 2018 the boat has a Webasto hot-air heating in each cabin.",
  location: "Rotterdam",
  price_per_hour: 25,
  hours: 2,
  capacity: 7,
  has_license: true,
  category: "Sailboat",
  rating: 3,
  user_id: user3.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541772989/proxy.duckduckgo-2.jpg")


boat4 = Boat.create!(
  name: "Amelie Zahra",
  description: "Travel silently through the canals of Amsterdam, with this fully electric boat. The Amelie Zahra is ideal for a birthday, staff drinks or simply a fun tour with friends and family. The boat is fitted with every comfort, including a toilet. The Amelie Zahra is ideal for exploring Amsterdam from the water on sunny days.",
  location: "Amsterdam",
  price_per_hour: 5,
  hours: 5,
  capacity: 30,
  has_license: true,
  category: "Party boat",
  user_id: user4.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541771878/Slope-Amelie-Zahra-3.jpg")

boat5 = Boat.create!(
  name: "Pedro 1020",
  description: "Albatross comfortably sleeps 4 in two cabins. A dinette table drops down to provide an additional double berth in the main cabin, and the settee in the upper saloon provides a further optional berth for a maximum of 7. The main forecabin has the forward berths, a dining table, well equipped kitchen with microwave/oven and 4 hobs. There are 2 fridges. The upper saloon area has a large seating area with tables, the lower steering position, DVD player and screen. There is a private rear cabin, a separate shower room and WC with electric toilet. The rear upper deck provides a great outdoor raised seating area for drinks or meals and also has the upper steering position and there is a bimini for sun protection. A bow thruster makes handling easy.",
  location: "The Hague",
  price_per_hour: 20,
  hours: 5,
  capacity: 7,
  has_license: false,
  category: "Powerboat",
  rating: 4,
  user_id: user5.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541772210/pedro-1020-huge-23870701061dd271.jpg")

boat6 = Boat.create!(
  name: "Icon 280",
  description: "Icon Yachts is a yard that has a reputation for world-class Dutch construction work, with notable projects including 62m Icon, Baton Rouge, Party Girl and many significant refits to its name. Icon 280 represents a rare chance to secure a Dutch-built yacht of this size without an extended build period, with no other Dutch yard able to deliver an 80m+ yacht before 2021. Representing huge value for money, this striking build is an irresistible prospect for any serious buyer looking to invest in a quality yacht from a proven yard and design team. This will be Icon Yachts’ largest project to date and a true head turner.
It is not hard to see why yachting enthusiasts will fall in love with Icon 280, which combines elegant design work, cutting edge technologies and huge exterior and interior volumes. Effortlessly balancing a timeless elegance with a contemporary edge, this is an exquisite yacht that combines all the best of past, present and future. Every element of the yacht has been designed with her guests in mind and she will deliver the ultimate user experience. All spaces are generous and bright, offset by modern styling.
Guest accommodation counts five guest suites, a VIP and the master cabin. The five guest suites are all located privately on the lower deck with direct access to the spa, Hammam, gym and beach club. The large VIP suite is positioned starboard on the main deck, while the master stateroom is in pride of place on the upper deck. The master suite is an exceptional 126 sq m (1356 sq ft) space, which includes a private study forward, 270º views and open sea balconies to port and starboard.",
  location: "Groningen",
  price_per_hour: 75,
  hours: 5,
  capacity: 10,
  has_license: true,
  category: "Small boat",
  rating: 2,
  user_id: user6.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541772765/proxy.duckduckgo.png")

boat7 = Boat.create!(
  name: "Warmond",
  description: "The technical equipment of the Olympia 34 cruiser has the same high level as the comfort. The 75 hp Volkswagen Marine diesel engine provides the drive, and the electric bow and stern thrusters make the mooring and the passing under narrow bridges easily. For navigation an electronic plotter is available for the skipper. Of course the Olympia 34 meets with all safety regulations; fire extinguishers and life jackets are on board.
This more than 10 m long yacht has a grand salon, spacious seating in the rear and a beautiful swimming platform.",
  location: "Den Bosch",
  price_per_hour: 20,
  hours: 5,
  capacity: 5,
  has_license: false,
  category: "Powerboat",
  rating: 2,
  user_id: user1.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541773489/olympia-warmond-34-kreuzer-huge-137166fbbb1d4c0d.jpg")

boat8 = Boat.create!(
  name: "Bavaria 37",
  description: "This complete new Bavaria 37 Blue Edition is equipped with a double steeringwheel, a bowthruster, electric anchor and a furling mainsail.",
  location: "Zaandam",
  price_per_hour: 35,
  hours: 5,
  capacity: 4,
  has_license: true,
  category: "Sailboat",
  rating: 2,
  user_id: user2.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541773610/bavaria-37-blue-edition-huge-255457dc80d06c20.jpg")

boat9 = Boat.create!(
  name: "Sunseeker",
  description: "A perfect boat for families and small groups to enjoy the south east area of ​​Mallorca.
Our boat is rented with or without skipper. Prices do not include pattern, final cleaning and gasoline!
In case of taking the boat with skipper for half a day has an additional cost of € 95, for a whole day € 170. The final cleaning in all cases is € 50.
In case of taking the boat with a skipper, we will be accompanied by our professional captain, who knows the boat very well and also the area. With him they could enjoy a perfect day on board. I will show you the most beautiful and unique coves and stop to see the sunset so special on board a boat so beautiful in the middle of the sea.
If you take the boat without a skipper, you will need a license for boats over 8 meters. They could pick up the boat in the port of Andratx and they have to also leave there in the same state and dock as and where they have picked it up.",
  location: "Haarlem",
  price_per_hour: 40,
  hours: 5,
  capacity: 4,
  has_license: true,
  category: "Powerboat",
  rating: 2,
  user_id: user3.id,
  remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1541773819/sunseeker-hawk-27-huge-2658302ccf1b86b0.jpg")




booking1 = Booking.create!(
  user_id: user1.id,
  boat_id: boat3.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking2 = Booking.create!(
  user_id: user1.id,
  boat_id: boat5.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking3 = Booking.create!(
  user_id: user2.id,
  boat_id: boat1.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking4 = Booking.create!(
  user_id: user2.id,
  boat_id: boat4.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking5 = Booking.create!(
  user_id: user3.id,
  boat_id: boat3.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking6 = Booking.create!(
  user_id: user3.id,
  boat_id: boat6.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking7 = Booking.create!(
  user_id: user4.id,
  boat_id: boat2.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking8 = Booking.create!(
  user_id: user4.id,
  boat_id: boat1.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking9 = Booking.create!(
  user_id: user3.id,
  boat_id: boat5.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking10 = Booking.create!(
  user_id: user5.id,
  boat_id: boat9.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking11 = Booking.create!(
  user_id: user2.id,
  boat_id: boat4.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )

booking12 = Booking.create!(
  user_id: user6.id,
  boat_id: boat8.id,
  status: 0,
  start_time: 1.month.from_now,
  end_time: 2.month.from_now
  )
