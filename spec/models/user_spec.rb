require 'spec_helper'

describe User do
  before(:each) do
    @user = FactoryGirl.build(:user)
  end

  it 'should be valid by default' do
    @user.should be_valid
  end
end
