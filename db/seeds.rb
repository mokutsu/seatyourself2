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

burger_king = Restaurant.create(name: 'Burger King', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://drscdn.500px.org/photo/120365635/q%3D80_m%3D1000_k%3D1/9849e50cc8cd9967d121390346881f1b", capacity: 10, category_id: 3)
taco_bell = Restaurant.create(name: 'Taco Bell', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://drscdn.500px.org/photo/120365635/q%3D80_m%3D1000_k%3D1/9849e50cc8cd9967d121390346881f1b", capacity: 100, category_id: 4)
subway = Restaurant.create(name: 'Subway', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://drscdn.500px.org/photo/120365635/q%3D80_m%3D1000_k%3D1/9849e50cc8cd9967d121390346881f1b", capacity: 20, category_id: 1)
kupert_kim = Restaurant.create(name:'Kupert and Kim', opening: '2000-01-01 12:00:00' , closing: '2000-01-01 23:59:00', img_link: "https://drscdn.500px.org/photo/120365635/q%3D80_m%3D1000_k%3D1/9849e50cc8cd9967d121390346881f1b", capacity: 1000, category_id: 2)
