# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Deleting all records"
Client.destroy_all
puts "Seeding database..."
1000.times do |i|
  Client.create!(
    rut: Faker::ChileRut.full_rut,
    name: Faker::Company.name,
    adress: Faker::Address.street_address,
    phone: Faker::PhoneNumber.cell_phone,
    city: Faker::Address.city,
    description: Faker::Lorem.paragraph,
    bank: Faker::Bank.name,
    bank_acount: Faker::Bank.account_number,

  )
end
puts "Done!"