# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants = [
  { name: 'CHez Jeannot', stars: 1, address: 'Vallon des Auffes' },
  { name: 'CHez Michel', stars: 3, address: 'Rue des Catalans' },
  { name: 'Mc Do', stars: 1, address: 'Canebière' }
]


restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end
