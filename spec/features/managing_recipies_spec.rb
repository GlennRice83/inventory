require "spec_helper"

feature "Managing recipes" do
  scenario "creating a new recipe" do
    create_list(:food, 3)

    visit new_recipe_path

    fill_in "Name", with: "My Recipe"

    click_on "add ingredient"

    within "#ingredient1" do
      select Food.first.name, from: "food"
      fill_in "amount", with: "1"
      fill_in "unit", with: "lbs"
    end

    click_on "add ingredient"

    within "#ingredient2" do
      select Food.first.name, from: "food"
      fill_in "amount", with: "2.5"
      fill_in "unit", with: "ounces"
    end

    fill_in "description", with: "Mix it all together and bake it"

    click_on "Create"

    expect(page).to have_css("div", text: "container successfully created")
    expect(Recipe.where(name: "My Recipe").count).to eq(1)
  end
end
