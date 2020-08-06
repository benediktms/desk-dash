# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Space.create(name: 'London Mayfair', user_id: 1, price: 200, address: "1000 Park Lane", number_of_desks: 40)
Space.create(name: 'Le Wagon London', user_id: 1, price: 100, address: "180 Kingsland Road", number_of_desks: 20)
Space.create(name: 'Chelsea New-York City', user_id: 2)
Space.create(name: 'Paris La Madeleine', user_id: 2)
Space.create(name: 'Brussels Central', user_id: 4)

Booking.create(day: "2020-08-07", space_id: 1, user_id: 1)
Booking.create(day: "2020-08-14", space_id: 2, user_id: 1)