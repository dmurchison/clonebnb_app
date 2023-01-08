
10.times do |i|
  property = Property.create!(
    name: Faker::Lorem.word,
    headline: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    address_1: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: "United States",
    price: Money.from_amount((1000...5000).to_a.sample),
  )

  property.images.attach(io: File.open(Rails.root.join("db", "seeders", "images", "property_#{i + 1}.png")), filename: property.name)

end

