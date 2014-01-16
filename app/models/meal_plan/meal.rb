# == Schema Information
#
# Table name: meal_plan_meals
#
#  id           :integer          not null, primary key
#  due_date     :datetime
#  status       :integer
#  created_at   :datetime
#  updated_at   :datetime
#  meal_plan_id :integer
#  recipe_id    :integer
#

class MealPlan::Meal < ActiveRecord::Base
  belongs_to :meal_plan
  belongs_to :recipe
  has_many :items, as: :containerlike
end
