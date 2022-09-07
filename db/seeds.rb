puts "🌱 Seeding greatness..."

60.times do
  Driver.create(
    name: Faker::Name.name,
    licence_number: Faker::DrivingLicence.usa_driving_licence('NEW MEXICO')
  )
end
45.times do
  Garage.create(
    name: Faker::Company.name,
    location: Faker::Address.city,
    mechanic: Faker::Name.name,
    certification_number: Faker::Number.number
  )
end
200.times do
  Vehicle.create(
    model: Faker::Vehicle.model,
    manufacture_year: Faker::Date.between(from: '2022-01-01', to: '2022-04-05'),
    last_service: Faker::Date.between(from: '2022-05-01', to: '2022-07-25'),
    next_service: Faker::Date.between(from: '2022-06-23', to: '2022-09-25'),
    catalytic_converter: "Present",
    vehicle_insurance: "Present",
    driver_id: rand(1..60),
    garage_id: rand(1..45)
  )
end



puts "✅ Done seeding!"
