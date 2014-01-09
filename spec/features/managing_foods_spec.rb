require "spec_helper"

feature "Managing foods" do
  scenario "can be viewed as an index" do
    create_list(:food, 3)
    visit foods_path

    expect(page).to have_css("article.food", count: 3)
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
