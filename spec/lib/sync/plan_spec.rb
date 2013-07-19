require 'spec_helper'

describe Sync::Plan do
  describe '.refresh' do
    it do
      pending 'Test refresh'
      VCR.use_cassette('plans') do
        expect { Sync::Plan.refresh }.to change(Plan, :count).by(1)
      end
    end
  end
end
