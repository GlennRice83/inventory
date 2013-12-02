class ChangeMeasureToUnitOnItem < ActiveRecord::Migration
  def change
    rename_column :items, :measure, :unit
  end
end
