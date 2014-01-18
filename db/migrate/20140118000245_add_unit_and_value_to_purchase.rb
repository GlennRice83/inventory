class AddUnitAndValueToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :unit, :string
    add_column :purchases, :value, :float
  end
end
