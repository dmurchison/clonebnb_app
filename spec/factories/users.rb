FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "foo#{i}@example.com" }
    password { "password" }
  end
end
