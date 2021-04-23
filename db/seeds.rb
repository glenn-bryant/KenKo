# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'httparty'

require "mapbox-sdk"

Mapbox.access_token = "pk.eyJ1IjoiZ2dsZW5uODgiLCJhIjoiY2tuaGM5MDBzMHpqejJubndudTZ0Z2JtdCJ9.-qhIHeDpFXTkRntOn204uA"

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

# HTTParty.get("https://japan-clinic-api.herokuapp.com/api/v1/clinics", headers: {"Authorization" => "Token token=\"JBfLXceeM--sSsxgyzF-\""})

headers = { 
  "authentication_token" => "JBfLXceeM--sSsxgyzF-" 
}

file = HTTParty.get('https://japan-clinic-api.herokuapp.com/api/v1/clinics', headers: headers)

 p file 

clinic_hash = JSON.parse(file.body)
 p clinic_hash
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
    website: clinic['website'],
  )

  @clinics = Clinic.all
  @clinics.each do |clinica|
    location = Mapbox::Geocoder.geocode_forward(clinica.address)
    mapbox_location =  location[0]["features"][0]["geometry"]["coordinates"]

    clinica["latitude"] = mapbox_location[1]
    clinica.save
    clinica["longitude"] = mapbox_location[0]
    clinica.save
  end
end

puts 'clinics created!'
puts 'seeds created!'
