# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe_ingredient, class: "Recipe::Ingredient" do
    recipe
  end
end
