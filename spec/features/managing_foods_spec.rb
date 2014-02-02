require "spec_helper"

feature "Managing foods" do
  let(:food) { create(:food) }

  scenario "can be viewed as an index" do
    create_list(:food, 3)
    visit foods_path

    expect(page).to have_css("article.food", count: 3)
  end

  scenario "view food" do
    food.items.create attributes_for(:item, unit: "lbs", value: "1")
    visit food_path(food)

    expect(page).to have_css("h1", text: food.name)
    expect(page).to have_css("span.total_quantity", text: "1.0 lbs")
    expect(page).to have_css("article.item", text: food.items.first.id)
    expect(page).to have_css("p.location_name", text: food.items.first.location_name)
  end

  scenario "add food" do
    visit new_food_path

    fill_in "Name", with: "new food"
    fill_in "Sku", with: "0000"
    click_on "Create"

    expect(page).to have_css("div", text: "food successfully created")
    expect(Food.where(name: "new food").count).to eq(1)
  end
end
