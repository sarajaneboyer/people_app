# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# t.string "first_name"
# t.integer "age"
# t.string "phone"
# t.string "email"
# t.string "last_name"
# t.boolean "friend"
10.times do 
  contact = Person.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: rand(18...65),
    hair_color: Faker::Color.hsla_color,
    eye_color: Faker::Color.hsla_color,
    gender: rand(2) == 1 ? "F" : "M",
    alive: random_boolean = [true,false].sample
  )
end
  