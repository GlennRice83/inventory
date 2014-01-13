class AddShoppingListIdToShoppingListListItem < ActiveRecord::Migration
  def change
    add_column :shopping_list_list_items, :shopping_list_id, :integer
  end
end
