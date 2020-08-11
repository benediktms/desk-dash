# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts "Finding spaces near you..."

# ---------- SEEDING INFORMATION ----------
# when testing locally make sure to run:
# rails db:drop, rails db:create, rails db:migrate
# to whenever re-seeding the database to ensure that the correct user_id is allocated to the spaces

Space.destroy_all
# This is the user that is the owner of the co-working spaces
mark = User.new({
                    name: "Mark",
                    email: "mark@example.com",
                    password: '#$taawktljasktlw4aaglj',
                    password_confirmation: '#$taawktljasktlw4aaglj'
                })
mark.save

# This is the user used to make the bookings.
# Make a note of the password and use her for demo purposes (alternatively you can always register as a user yourself)
sally = User.new({
                     name: "Sally",
                     email: "sally@example.com",
                     password: 'secure_pass5!',
                     password_confirmation: 'secure_pass5!'
                 })
sally.save

space1 = Space.new({
                       name: 'WeWork - Aviation House',
                       photo: 'https://images.unsplash.com/photo-1540821924489-7690c70c4eac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1291&q=80',
                       address: 'Aviation House, 125 Kingsway, Holborn, London WC2B 6NH',
                       user_id: 1,
                       price: '£45',
                       fiber_optic: true,
                       catering: true,
                       number_of_desks: 8
                   })
space1.save

space2 = Space.new({
                       name: 'WeWork - 21 Soho Square',
                       photo: 'https://images.unsplash.com/photo-1483058712412-4245e9b90334?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80' ,
                       address: '21 Soho Square, Soho, London W1D 3QP',
                       user_id: 1,
                       price: '£40',
                       fiber_optic: true,
                       catering: true,
                       number_of_desks: 3
                   })
space2.save

space3 = Space.new({
                       name: 'WeWork - The Cursitor',
                       photo: 'https://images.unsplash.com/photo-1505330622279-bf7d7fc918f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
                       address: '38 Chancery Lane London WC2A 1EN',
                       user_id: 1,
                       price: '£32',
                       fiber_optic: true,
                       catering: false,
                       number_of_desks: 12
                   })
space3.save

space4 = Space.new({
                       name: 'WeWork - Aldwych House',
                       photo: 'https://images.unsplash.com/photo-1533750446969-255bbf191920?ixlib=rb-1.2.1&auto=format&fit=crop&w=1324&q=80',
                       address: 'Aldwych House, 71-91 Aldwych, Holborn, London WC2B 4HN',
                       user_id: 1,
                       price: '£57',
                       fiber_optic: true,
                       catering: true,
                       number_of_desks: 22
                   })
space4.save

space5 = Space.new({
                       name: 'WeWork - Buckingham Palace',
                       photo: 'https://images.unsplash.com/photo-1542089078-9086d071d8da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
                       address: '123 Buckingham Palace Rd, Victoria, London SW1W 9SH',
                       user_id: 1,
                       price: '£24',
                       fiber_optic: false,
                       catering: false,
                       number_of_desks: 9
                   })
space5.save

space6 = Space.new({
                       name: 'WeWork - Medius House',
                       photo: 'https://images.unsplash.com/photo-1560821630-1a7c45c3286e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                       address: '2 Sheraton St Medius House, London W1F 8BH',
                       user_id: 1,
                       price: '£62',
                       fiber_optic: true,
                       catering: true,
                       number_of_desks: 15
                   })
space6.save

space7 = Space.new({
                       name: 'Uncommon Coworking Space',
                       photo: 'https://images.unsplash.com/photo-1557804500-7a58fbcd4d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                       address: '1 Long Ln, London SE1 4PG',
                       user_id: 1,
                       price: '£30',
                       fiber_optic: true,
                       catering: true,
                       number_of_desks: 4
                   })
space7.save

space8 = Space.new({
                       name: 'Born Freelance Coworking',
                       photo: 'https://images.unsplash.com/photo-1489396944453-834c536105c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
                       address: '1st Floor, 35 Little Russell St, Holborn, London WC1A 2HH',
                       user_id: 1,
                       price: '£42',
                       fiber_optic: true,
                       catering: false,
                       number_of_desks: 7
                   })
space8.save

space9 = Space.new({
                       name: 'Huckletree Soho',
                       photo: 'https://images.unsplash.com/photo-1562664348-1ee6c6c0ce92?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
                       address: 'Second Floor, Ingestre Court ( Basement, Ingestre Pl, London W1F 0JL',
                       user_id: 1,
                       price: '£47',
                       fiber_optic: true,
                       catering: true,
                       number_of_desks: 11
                   })
space9.save

space10 = Space.new({
                       name: 'Co-Work Borough',
                       photo: 'https://images.unsplash.com/photo-1562664348-2188b99b5157?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60',
                       address: '109 Borough High St, London SE1 1NL',
                       user_id: 1,
                       price: '£46',
                       fiber_optic: true,
                       catering: true,
                       number_of_desks: 6
                   })
space10.save
