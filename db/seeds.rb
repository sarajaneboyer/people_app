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
    first_name: Faker::Person.first_name,
    last_name: Faker::Person.last_name,
    age: rand(18...65),
    hair_color: Faker::Person.hair_color,
    eye_color: Faker::Person.eye_color,
    gender: rand(2) == 1 ? F : M,
    alive: random_boolean = [true,false].sample
  )
end
  # has one address create it
  # t.string "state"
  # t.string "city"
  # t.string "zip"
  
  # contact.create_address(
  #   city: Faker::Address.city, 
  #   state: Faker::Address.state, 
  #   zip: Faker::Address.zip_code
  # )
  # Has many notes lets make number of notes random for each contact
  # num_notes = rand(1..3)
  # messages = [
  #   Faker::Hipster.sentences(number: 1), 
  #   Faker::Quote.famous_last_words,
  #   Faker::ChuckNorris.fact,
  # ]
  # num_notes.times do |i|
  #   contact.notes.create(body: messages[i])
  # end