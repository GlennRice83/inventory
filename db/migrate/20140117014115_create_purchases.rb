class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :price_cents
      t.integer :store_item_id

      t.timestamps
    end
  end
end
