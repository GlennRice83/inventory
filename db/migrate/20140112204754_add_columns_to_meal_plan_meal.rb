class AddColumnsToMealPlanMeal < ActiveRecord::Migration
  def change
    add_column :meal_plan_meals, :meal_plan_id, :integer
    add_column :meal_plan_meals, :recipe_id, :integer
  end
end
