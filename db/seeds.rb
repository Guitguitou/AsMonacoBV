# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "Create an admin"
# AdminUser.create!(email: 'guitou@gmail.com', password: 'admin10', password_confirmation: 'admin10')
Training.destroy_all
Group.destroy_all
p "Create groups"
elite = Group.create!(groupe_type: "Élite")
p "#"
un = Group.create!(groupe_type: "Groupe 1")
p "#"
deux = Group.create!(groupe_type: "Groupe 2")
p "#"
trois = Group.create!(groupe_type: "Groupe 3")
p "#"
quatre = Group.create!(groupe_type: "Groupe 4")
p "#"
m20 = Group.create!(groupe_type: "M20")
p "#"
m17 = Group.create!(groupe_type: "M17")
p "#"
m15 = Group.create!(groupe_type: "M15")
p "#"
m13 = Group.create!(groupe_type: "M13")
p "#"
baby = Group.create!(groupe_type: "Baby-volley")
p "#"
groupless = Group.create!(groupe_type: "Groupless")
p 'Done dude !'



