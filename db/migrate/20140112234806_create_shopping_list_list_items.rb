class CreateShoppingListListItems < ActiveRecord::Migration
  def change
    create_table :shopping_list_list_items do |t|
      t.integer :state

      t.timestamps
    end
  end
end
