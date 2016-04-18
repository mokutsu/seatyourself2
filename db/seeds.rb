# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

american = Category.create(name: "American")
korean = Category.create(name: "Korean")
french = Category.create(name: "French")
mexican = Category.create(name: "Mexican")

burger_king = Restaurant.create(name: 'Burger King', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://i.ytimg.com/vi/1BmkGA0Rd_k/maxresdefault.jpg", capacity: 10, category_id: 3)
taco_bell = Restaurant.create(name: 'Taco Bell', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "http://static1.squarespace.com/static/5444024ee4b02c9e7d3c7f22/544eac9ae4b00059eab2f238/544eac9ce4b0bca1f95a84c5/1414442142018/slider_tacos3.png", capacity: 100, category_id: 4)
subway = Restaurant.create(name: 'Subway', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://upload.wikimedia.org/wikipedia/commons/4/4d/Subway-Restaurant_in_Passau.jpg", capacity: 20, category_id: 1)
kupert_kim = Restaurant.create(name:'Kupert and Kim', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://pbs.twimg.com/profile_images/3099595511/f3196239dc69a368b72d8928590decc1_400x400.png", capacity: 1000, category_id: 2)

reservation1 = Reservation.create(customer_id: 1, restaurant_id: 1, date: '2016-05-01', time: '2000-01-01 16:00:00', party_size: 5)
