puts 'Cleaning database...'
User.destroy_all

users = [
  {
    email: "jo@ongert.com",
    password: "123456",
    first_name: "Jo",
    last_name: "Ongert",
    phone: "+49987 763 362",
    address: "1 Black Forest Road",
    admin: true
  },
  {
    email: "dave@gmail.com",
    password: "123456",
    first_name: "Dave",
    last_name: "Smith",
    phone: "+447926 825 183",
    address: "28 Avenue Road",
    admin: false
  },
  {
    email: "sergio@hotmail.com",
    password: "123456",
    first_name: "Sergio",
    last_name: "Garcia",
    phone: "+32 12739 2172",
    address: "99 Hola Lane",
    admin: false
  }
]

flat = { available: true }

puts "Creating users..."
User.create!(users)
puts "One admin and two renters created!"
puts "Creating the flat..."
Flat.create!(flat)
puts "Flat built!"
puts "Seed complete 👍🏾"
