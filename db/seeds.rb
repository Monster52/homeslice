# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.find_by(email: "ross@example.com")
  admin = User.create!(email: 'ross@example.com', password: 'welcome')
  puts "Created admin: email - #{User.first.email}"
else
  puts "User admin already created"
end

