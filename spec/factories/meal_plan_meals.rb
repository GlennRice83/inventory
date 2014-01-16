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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meal_plan_meal, :class => 'MealPlan::Meal' do
    due_date "2014-01-12 12:38:07"
    status 1
  end
end
