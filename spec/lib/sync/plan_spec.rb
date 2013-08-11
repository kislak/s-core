require 'spec_helper'

describe Sync::Plan do
  describe '.refresh' do
    it 'should fetch plan with and save them to Plan model' do
      VCR.use_cassette('plans') do
        expect(Plan).to have(0).items

        Sync::Plan.refresh

        expect(Plan).to have(1).item

        plan = Plan.last

        expect(plan.stripe_id).to eq 'asd'
        expect(plan.interval).to eq 'month'
        expect(plan.name).to eq 'Test'
        expect(plan.amount).to eq 1000
        expect(plan.currency).to eq 'usd'
        expect(plan.interval_count).to eq 1
        expect(plan.trial_period_days).to eq 30
      end
    end
  end
end
