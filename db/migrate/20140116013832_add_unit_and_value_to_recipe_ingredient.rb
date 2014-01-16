class AddUnitAndValueToRecipeIngredient < ActiveRecord::Migration
  def change
    add_column :recipe_ingredients, :unit, :string
    add_column :recipe_ingredients, :value, :float
  end
end
