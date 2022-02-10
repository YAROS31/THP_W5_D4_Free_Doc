# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

doctors = []
patients = []
appointments = []

30.times do |x|
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: rand(00000..99999))
  doctors << doctor
end

30.times do |x|
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  patients << patient
end

30.times do |x|
 appointment = Appointment.create(date: Faker::Date.between(from: '2021-09-23', to: '2022-09-25'),doctor_id: doctors[rand(0..29)].id, patient_id: patients[rand(0..29)].id)
 appointments << appointment
end
