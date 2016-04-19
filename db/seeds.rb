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

burger_king = Restaurant.create(name: 'Burger King', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://drscdn.500px.org/photo/95289075/q%3D80_m%3D2000/80aabc0f9be43849d72d6d19596dd1ee", capacity: 10, category_id: 3)
taco_bell = Restaurant.create(name: 'Taco Bell', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://drscdn.500px.org/photo/79260211/q%3D80_m%3D2000/166fb1fa0470bdc92f60e13879c003c0", capacity: 100, category_id: 4)
subway = Restaurant.create(name: 'Subway', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://drscdn.500px.org/photo/90151571/q%3D80_h%3D450/7a3d459f9513ed9d2283f21d07e6b65a", capacity: 20, category_id: 1)
kupert_kim = Restaurant.create(name:'Kupert and Kim', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://drscdn.500px.org/photo/107607635/q%3D80_m%3D2000/59ba5434c49445f31a4495117fe8a912", capacity: 1000, category_id: 2)

reservation1 = Reservation.create(customer_id: 1, restaurant_id: 1, date: '2016-05-01', time: '2000-01-01 16:00:00', party_size: 5)


reservation2 = Reservation.create(customer_id: 1, restaurant_id: 1, date: '2016-05-01', time: '2000-01-01 18:00:00', party_size: 5)
