# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "Finding spaces near you..."

space1 = Space.new({name: 'WeWork Aviation House - Coworking & Office Space', photo: 'https://unsplash.com/photos/FJh36ln5pXc', address: 'Aviation House, 125 Kingsway, Holborn, London WC2B 6NH', user_id: 3})
space1.save
space2 = Space.new({name: 'WeWork 21 Soho Square - Coworking & Office Space', photo: 'https://unsplash.com/photos/KE0nC8-58MQ' , address: '21 Soho Square, Soho, London W1D 3QP', user_id: 3})
space2.save
space3 = Space.new({name: 'WeWork The Cursitor - Coworking & Office Space', photo: 'https://unsplash.com/photos/MNd-Rka1o0Q', address: '38 Chancery Lane London WC2A 1EN', user_id: 3})
space3.save
space4 = Space.new({name: 'WeWork Aldwych House - Coworking & Office Space', photo: 'https://unsplash.com/photos/VV0En9viu2M', address: 'Aldwych House, 71-91 Aldwych, Holborn, London WC2B 4HN', user_id: 3})
space4.save
space5 = Space.new({name: 'WeWork 123 Buckingham Palace Rd - Coworking & Office Space', photo: 'https://unsplash.com/photos/EPY6riS4vw4', address: '123 Buckingham Palace Rd, Victoria, London SW1W 9SH', user_id: 3})
space5.save
