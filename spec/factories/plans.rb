FactoryGirl.define do
  factory :plan do
    interval "month"
    sequence(:name) { |n| "Plan #{n}" }
    amount 9.99
    currency "usd"
    sequence(:stripe_id) { |n| "stripe-id#{n}" }
    interval_count 1
    trial_period_days 30
  end
end
