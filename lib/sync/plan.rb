module Sync
  module Plan
    def self.refresh
      Stripe::Plan.all.each do |plan|
        ::Plan.create!({
          :stripe_id => plan['id'],
          :interval => plan['interval'],
          :currency => plan['currency'],
          :name => plan['name'],
          :amount => plan['amount'],
          :interval_count => plan['interval_count'],
          :trial_period_days => plan['trial_period_days']
        })
      end
    end
  end
end
