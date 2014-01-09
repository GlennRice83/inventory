# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meal_plan_meal, :class => 'MealPlan::Meal' do
    due_date "2014-01-12 12:38:07"
    status 1
  end
end
