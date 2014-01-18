class AddContainerIdToFood < ActiveRecord::Migration
  def change
    add_column :foods, :container_id, :integer
  end
end
