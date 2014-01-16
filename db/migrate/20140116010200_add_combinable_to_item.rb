class AddCombinableToItem < ActiveRecord::Migration
  def change
    add_column :items, :combinable, :boolean
  end
end
