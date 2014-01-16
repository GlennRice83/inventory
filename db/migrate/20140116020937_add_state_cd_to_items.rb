class AddStateCdToItems < ActiveRecord::Migration
  def change
    add_column :items, :state_cd, :integer
  end
end
