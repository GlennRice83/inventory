class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.string :name
      t.string :store
      t.integer :state

      t.timestamps
    end
  end
end
