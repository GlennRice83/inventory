class AddExpirationDateToItem < ActiveRecord::Migration
  def change
    add_column :items, :expiration_date, :datetime
  end
end
