class AddContainerlikeToItem < ActiveRecord::Migration
  def change
    add_column :items, :containerlike_id, :integer
    add_column :items, :containerlike_type, :string
  end
end
