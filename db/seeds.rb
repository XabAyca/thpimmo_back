# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "*" * 50
p " " * 50
p "                 STARTING SEEDING                 "
p " " * 50
p "*" * 50

p "Destroy curent data..."

p "Destroying User... #{User.count} "
Userer.destroy_all

p "Destroying Category... #{Category.count} "
Category.destroy_all

p "Destroying Location... #{Location.count} "
Location.destroy_all

p "Destroying Property... #{Property.count} "
Property.destroy_all

p "-" * 50
p "-" * 50


users = []
categories = ['house', 'apartment', 'villa', 'chalet']
properties = []
user_number = 15

p "USERS"
user_number.times do |i|
  users << User.create(email: Faker::Internet.email, password: "azerty1234", password_confirmation: "azerty1234")
  system("clear")
  puts "#{i+1} users created"
  puts "|"+("█"*(i+1))+(" "*((user_number-1)-i))+"|"
end

p "-" * 50

p "CATEGORIES"
categories.each_with_index do |category,i|
  Category.create(name:category)
  system("clear")
  puts "#{i+1} category created"
  puts "|"+("█"*(i+1))+(" "*((categories.length-1)-i))+"|"
end

10.times do |i|
  Location.create(name: Faker::Games::Pokemon.location)
  system("clear")
  puts "#{i+1} locatation created"
  puts "|"+("█"*(i+1))+(" "*((10-1)-i))+"|"
end

# Properties

Property.create(title: 
  )
  Property.create(title: Faker::Movies::StarWars.planet, 
                  price: rand(500..2000), 
                  description: Faker::Lorem.sentence(word_count: 20),
                  user: User.all.sample,
                  location: Location.all.sample,
                  category: Category.all.sample)

  system("clear")
  puts "#{i+1} property created"
  puts "|"+("█"*(i+1))+(" "*((30-1)-i))+"|"
end


puts ""
puts "Enjoy 🥃 !!!"
puts "----------->"
