# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plan do
    interval "MyString"
    name "MyString"
    amount "9.99"
    currency "MyString"
    stripe_id "MyString"
    interval_count 1
    trial_period_days 1
  end
end
