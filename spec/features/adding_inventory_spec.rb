require "spec_helper"

describe "Adding Inventory" do
  it "allows the addition of a new item with a quantity" do
    let(:item) { create(:item) }
    let(:unit) { create(:unit, item: item, value: 1.5, measure: "lbs") }
  end
end
