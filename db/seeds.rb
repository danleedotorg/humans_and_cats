# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
pp 'generating seeds'

require 'faker'

100.times do |i|
  puts Human.create!(name: Faker::Name.name, age: rand(1..100), gender: [0,1,2].sample)
  puts Cat.create!(name: Faker::Name.name, age: rand(1..20), gender: [0,1,2].sample, breed: Faker::Creature::Cat.breed)
end

last_cat = Cat.last

# last cat has first 3 humans
Human.first(3).each do |human|
  puts CatsHuman.create!(cat: last_cat, human: human)
end

last_human = Human.last

# last human owns 3 cats
Cat.first(3).each do |cat|
  puts CatsHuman.create!(cat: cat, human: last_human)
end



