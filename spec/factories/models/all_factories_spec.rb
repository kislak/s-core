#require 'spec_helper'
#
#describe 'validate FactoryGirl factories' do
#  FactoryGirl.factories.each do |factory|
#    context "with factory for :#{factory.name}" do
#      subject { build(factory.name) }
#
#      it "is valid" do
#        subject.valid?.should be, subject.errors.full_messages.join(', ')
#      end
#    end
#  end
#end
