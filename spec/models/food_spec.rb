require 'spec_helper'

describe Food do
  describe '#total_quantity' do
    let(:food) { create(:food) }

    it "returns the sum of all item's quantity" do
      create(:item, value: 1, unit: 'lbs', food: food)
      create(:item, value: 2, unit: 'lbs', food: food)

      expect(food.total_quantity).to eq(3)
    end

    it 'can sum value of mixed units' do
      create(:item, unit: 'lbs', value: 1, food: food)
      create(:item, unit: 'kg', value: 2, food: food)

      expect(food.total_quantity('kg')).to be_within(0.005).of(2.45)
    end
  end
end
