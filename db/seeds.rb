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

User.destroy_all
Boat.destroy_all


user = User.create!(first_name: "Bob", last_name: "Sponge", email: "sponge@gmail.com", password: "123secret")
user2 = User.create!(first_name: "Moby", last_name: "Dick", email: "moby@gmail.com", password: "123secret")
user3 = User.create!(first_name: "Jack", last_name: "Sparrow", email: "sparrow@gmail.com", password: "123secret")

# Boat.destroy!

boat = Boat.create!(
  name: "Titanic",
  description: "Boat to rent",
  location: "Amsterdam",
  price_per_hour: 10,
  hours: 2,
  capacity: 200,
  has_license: false,
  user_id: user.id)


extra_boat = Boat.create!(
  name: "Katamaran",
  description: "Splendid Boat to rent",
  location: "Amsterdam",
  price_per_hour: 50,
  hours: 1,
  capacity: 6,
  has_license: false,
  user_id: user.id)


boat2 = Boat.create!(
  name: "Sailboat",
  description: "Boat for rent",
  location: "Amsterdam",
  price_per_hour: 5,
  hours: 2,
  capacity: 8,
  has_license: true,
  user_id: user2.id)

boat3 = Boat.create!(
  name: "Singel",
  description: "Great Boat for rent",
  location: "Haarlem",
  price_per_hour: 25,
  hours: 5,
  capacity: 20,
  has_license: false,
  user_id: user3.id)
