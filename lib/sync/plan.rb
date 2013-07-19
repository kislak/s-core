module Sync
  module Plan
    def self.refresh
      Stripe::Plan.all.each do |plan|
        puts plan.inspect
      end
    end
  end
end
