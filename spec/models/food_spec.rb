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

      expect(food.total_quantity("kg")).to be_close(2.5, 0.5)
    end
  end
end
