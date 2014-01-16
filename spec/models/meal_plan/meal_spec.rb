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

require 'spec_helper'

describe MealPlan::Meal do
  pending "add some examples to (or delete) #{__FILE__}"
end
