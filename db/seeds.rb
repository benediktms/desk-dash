# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "Finding spaces near you..."

Space.destroy_all

space1 = Space.new({name: 'WeWork Aviation House - Coworking & Office Space', photo: 'https://images.unsplash.com/photo-1540821924489-7690c70c4eac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1291&q=80', address: 'Aviation House, 125 Kingsway, Holborn, London WC2B 6NH', user_id: 3})
space1.save
space2 = Space.new({name: 'WeWork 21 Soho Square - Coworking & Office Space', photo: 'https://images.unsplash.com/photo-1483058712412-4245e9b90334?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80' , address: '21 Soho Square, Soho, London W1D 3QP', user_id: 3})
space2.save
space3 = Space.new({name: 'WeWork The Cursitor - Coworking & Office Space', photo: 'https://images.unsplash.com/photo-1505330622279-bf7d7fc918f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', address: '38 Chancery Lane London WC2A 1EN', user_id: 3})
space3.save
space4 = Space.new({name: 'WeWork Aldwych House - Coworking & Office Space', photo: 'https://images.unsplash.com/photo-1533750446969-255bbf191920?ixlib=rb-1.2.1&auto=format&fit=crop&w=1324&q=80', address: 'Aldwych House, 71-91 Aldwych, Holborn, London WC2B 4HN', user_id: 3})
space4.save
space5 = Space.new({name: 'WeWork 123 Buckingham Palace Rd - Coworking & Office Space', photo: 'https://images.unsplash.com/photo-1542089078-9086d071d8da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80', address: '123 Buckingham Palace Rd, Victoria, London SW1W 9SH', user_id: 3})
space5.save