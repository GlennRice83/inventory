class MealPlan::Meal < ActiveRecord::Base
  belongs_to :meal_plan
  belongs_to :recipe
  has_many :items, as: :containerlike
end
