class ChangeStateToStateCdOnShoppingListListItem < ActiveRecord::Migration
  def change
    rename_column :shopping_list_list_items, :state, :state_cd
  end
end
