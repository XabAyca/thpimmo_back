# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Location.destroy_all
Property.destroy_all


users = []
properties = []
categories = ['house', 'apartment', 'villa']
user_number = 15


user_number.times do |i|
  users << User.create(email: Faker::Internet.email, password: "azerty1234", password_confirmation: "azerty1234")

  system("clear")
  puts "#{i+1} users created"
  puts "|"+("█"*(i+1))+(" "*((user_number-1)-i))+"|"
end

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

30.times do |i|
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
