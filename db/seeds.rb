require 'factory_girl_rails'

unless Plan.exists?
  3.times { FactoryGirl.create(:plan) }
end
