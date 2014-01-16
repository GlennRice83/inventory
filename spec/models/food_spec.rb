# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  sku        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  shelf_life :decimal(, )
#

require "spec_helper"

describe Food do
  describe "#total_quantity" do
    let(:food) { create(:food) }

    it "returns the sum of all item's quantity" do
      create(:item, value: 1, food: food)
      create(:item, value: 2, food: food)

      expect(food.total_quantity).to eq(3)
    end

    it "can sum value of mixed units" do
      create(:item, unit: "lbs", value: 1, food: food)
      create(:item, unit: "kg", value: 2, food: food)

      expect(food.total_quantity("kg")).to be_within(0.05).of(2.5)
    end
  end
end
