# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do |index|
  Patient.create(first_name: "Nom#{index}", last_name: "prénom#{index}")
end

10.times do |index|
  Doctor.create(first_name: Faker::Name.first_name, last_name: "prénom#{index}")
end

5.times do |index|
  Appointment.create(doctor: Doctor.find(index+1), patient:Patient.find(index+1))
end

