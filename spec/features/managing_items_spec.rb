require "spec_helper"

feature "Managing items" do
  let(:food) { create(:food) }

  scenario "they can be added to the inventory" do
    visit new_item_path
    fill_in "Sku", with: food.sku
    fill_in "Unit", with: "Lbs"
    fill_in "Value", with: "1"
    click_on "Create"

    expect(page).to have_css("div", text: "item successfully created")
    expect(Item.count).to eq(1)
  end

  scenario "can be viewed as an index" do
    create_list(:food, 3)
    visit items_path

    expect(page).to have_css("article.item", count: 3)
  end
end
