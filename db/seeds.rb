# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'httparty'

puts 'deleting database...'
Clinic.destroy_all
User.destroy_all

puts 'creating seeds...'

puts 'creating user...'

glenn = User.create!(
  first_name: "Glenn",
  last_name: "Bryant",
  location: "Nerima",
  email: "glennbryant3@gmail.com",
  password: "123456"
)

puts 'user created!'

file = HTTParty.get('https://japan-clinic-api.herokuapp.com/api/v1/clinics')
clinic_hash = JSON.parse(file.body)

puts 'creating clinics...'

clinic_hash.each do |clinic|
  Clinic.create!(
    user: glenn,
    name: clinic['name'],
    telephone: clinic['telephone'],
    hours: clinic['hours'],
    address: clinic['address'],
    eng_op: clinic['eng_op'],
    category: clinic['category'],
    website: 'default'
  )
end

puts 'clinics created!'
puts 'seeds created!'
