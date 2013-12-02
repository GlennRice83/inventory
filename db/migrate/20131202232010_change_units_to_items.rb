class ChangeUnitsToItems < ActiveRecord::Migration
  def change
    rename_table :units, :items
  end
end
