product = ["この絵は昨年パリに住んでいた時に、ノールック&ノータッチで描いたものです"]

category = ["油絵", "水彩画", "デッサン"]

30.times do |index|
  Product.create(name: "#{index}回目", detail: "#{index}回目の投稿です。#{product.sample}", category: "#{category.sample}")
end





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
