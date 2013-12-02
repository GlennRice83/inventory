class ChangeItemIdtoFoodId < ActiveRecord::Migration
  def change
    rename_column :items, :item_id, :food_id
  end
end
