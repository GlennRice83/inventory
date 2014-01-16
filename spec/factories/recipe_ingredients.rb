# == Schema Information
#
# Table name: recipe_ingredients
#
#  id          :integer          not null, primary key
#  recipe_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  preperation :text
#  unit        :string(255)
#  value       :float
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe_ingredient, class: "Recipe::Ingredient" do
    recipe
  end
end
