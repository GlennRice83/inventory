class AddShelfLifeToFood < ActiveRecord::Migration
  def change
    add_column :foods, :shelf_life, :decimal
  end
end
