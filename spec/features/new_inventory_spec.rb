require "spec_helper"

feature "New inventory" do
  let(:item) { create(:item) }
  scenario "I can add units to the inventory" do
    unit = create(:unit, item: item, value: 1.4, measure: "lbs")
  end
end
