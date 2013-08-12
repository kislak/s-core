require 'spec_helper'

describe 'Home page' do
  let!(:plans) { [create(:plan), create(:plan)] }

  before { visit '/' }

  it 'should list all plans' do
    plans.each do |plan|
      expect(page).to have_content plan.name
      expect(page).to have_content plan.amount
    end
  end
end
