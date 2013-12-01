class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :item_id
      t.float :value
      t.string :measure

      t.timestamps
    end
  end
end
