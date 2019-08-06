# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning databse...'
Article.destroy_all


puts 'Creating articles...'
10.times do
  articles = Article.create ({ title: Faker::Ancient.god, content: Faker::Books::Lovecraft.sentence })
end

puts 'Done!'
