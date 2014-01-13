class MealPlan < ActiveRecord::Base
  has_many :meals, class: MealPlan::Meal
end
