# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating Restaurants'

pizza_hut = { name: 'Pizza Hut', address:'Lomme', phone_number: '03-56-15-13-17', category: 'italian' }
authentique = { name: 'Authentique', address:'Lomme', phone_number: '03-56-15-13-26', category: 'french' }
bertho = { name: 'Bertho', address:'Bruxelle', phone_number: '033-56-15-13-17', category: 'belgian' }
royal_wok = { name: 'Royal Wok', address:'Paris', phone_number: '01-56-18-13-17', category: 'chinese' }
pizza_nono = { name: 'Pizza Nono', address:'Lomme', phone_number: '03-44-15-13-17', category: 'italian' }

restaurants = [pizza_hut, authentique, bertho, royal_wok, pizza_nono]

restaurants.each do |attribute|
  restaurant = Restaurant.create(attribute)
  puts "Created #{restaurant.name}"
end

puts 'finished'
