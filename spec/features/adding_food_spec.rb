require "spec_helper"

feature "Adding food" do
  let(:food) { create(:food) }
  scenario "I can add units to the inventory" do
    visit new_item_path
    fill_in :sku, with: food.sku
    fill_in :value, with: 1.4
    fill_in :measure, with: "lbs"
    click_on :create

    expect(page).to have_css(:div, text: /item successfully created/)
  end

end
