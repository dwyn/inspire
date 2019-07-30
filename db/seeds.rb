# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create!()
10.times do
  User.create!(
    name: Faker::Name.first_name,
    password: "password"
  )
end



25.times do
  Project.create!(title: Faker::Superhero.name, user_id: 1)
end