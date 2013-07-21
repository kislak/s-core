# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@mail.me" }
    password '12341234'
  end
end
