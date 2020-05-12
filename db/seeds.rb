# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

wuhan = { name: "Wuhan", address: "Frankfurt", phone_number: '03-773-1234',category: "chinese" }
festival = { name: "Festival", address: "Knokke", phone_number: '03-000-3770',category: "belgian" }
pizza = { name: 'Pizza Juliet', address: 'Ha-Galil St 78, Ganei Tikva', phone_number: '03-773-3770', category: 'italian' }
sushi = { name: 'Oshi Oshi Sushi', address: '17, HaKalanit St 1, Kiryat Ono', phone_number: '03-575-3012', category: 'japanese' }
tony = { name: 'Tony Vespa', address: 'HaShikma St 1, Savyon', phone_number: '03-542-4730', category: 'italian' }

[ wuhan, festival, pizza, sushi, tony ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
