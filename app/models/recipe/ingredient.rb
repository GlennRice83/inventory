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
#  food_id     :integer
#

class Recipe::Ingredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :food
end
