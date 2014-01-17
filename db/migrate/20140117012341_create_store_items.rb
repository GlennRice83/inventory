class CreateStoreItems < ActiveRecord::Migration
  def change
    create_table :store_items do |t|
      t.integer :food_id
      t.integer :store_id

      t.timestamps
    end
  end
end
