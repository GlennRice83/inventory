class AddItemIdToQuantity < ActiveRecord::Migration
  def change
    add_column :quantities, :item_id, :integer
  end
end
