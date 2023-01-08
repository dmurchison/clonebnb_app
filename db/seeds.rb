# My Seeds file

5.times do |i|
  user = User.create(email: Faker::Internet.email, password: "password")
  user.profile.update(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  user.picture.attach(io: user_pictures[i + 1], filename: "#{user.full_name}.jpg")
end

me = User.create(email: "duncan@computeranything.dev", password: "password")
me.profile.update(first_name: "Duncan", last_name: "Murchison")
me.picture.attach(io: user_pictures[0], filename: "#{me.full_name}.jpg")

10.times do |i|
  property = Property.create!(
    name: Faker::Lorem.word,
    headline: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    address_1: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country_code: "US",
    price: Money.from_amount((1000...5000).to_a.sample),
  )

  property.images.attach(io: File.open(Rails.root.join("db", "seeders", "images", "property_#{i + 1}.jpg")), filename: property.name)

end

