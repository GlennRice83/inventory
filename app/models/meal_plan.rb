# == Schema Information
#
# Table name: meal_plans
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class MealPlan < ActiveRecord::Base
  has_many :meals, class_name: MealPlan::Meal
end
