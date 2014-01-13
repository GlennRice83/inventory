class MealPlan < ActiveRecord::Base
  has_many :meals, class_name: MealPlan::Meal
end
