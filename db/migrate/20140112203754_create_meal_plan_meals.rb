class CreateMealPlanMeals < ActiveRecord::Migration
  def change
    create_table :meal_plan_meals do |t|
      t.datetime :due_date
      t.integer :status

      t.timestamps
    end
  end
end
