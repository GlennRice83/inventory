class AddFoodIdToRecipeIngredient < ActiveRecord::Migration
  def change
    add_column :recipe_ingredients, :food_id, :integer
  end
end
