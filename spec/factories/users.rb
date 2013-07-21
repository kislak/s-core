FactoryGirl.define do
  factory :user do
    email
    password Faker::Lorem.sentence
  end
end
