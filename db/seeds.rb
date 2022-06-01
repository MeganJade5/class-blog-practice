# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
10.times do |_i|
  Article.create([
                   {
                     title: Faker::TvShows::Friends.quote,
                     body: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
                     important: rand(1..10)
                   }
                 ])
end
#   Character.create(name: 'Luke', movie: movies.first)
