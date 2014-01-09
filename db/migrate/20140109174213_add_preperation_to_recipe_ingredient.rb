class AddPreperationToRecipeIngredient < ActiveRecord::Migration
  def change
    add_column :recipe_ingredients, :preperation, :text
  end
end
