require 'spec_helper'

describe ApplicationHelper do
  describe '#columns_width' do
    context 'collection is empty' do
      let(:collection) { [] }

      it { expect(helper.columns_width(collection)).to eq 12 }
    end

    context 'collection is more than 12 items' do
      let(:collection) { (1..13).to_a }

      it { expect(helper.columns_width(collection)).to eq 2 }
    end

    context 'collection has 3 items' do
      let(:collection) { (1..3).to_a }

      it { expect(helper.columns_width(collection)).to eq 4 }
    end
  end
end
