# == Schema Information
#
# Table name: shopping_list_list_items
#
#  id               :integer          not null, primary key
#  state            :integer
#  created_at       :datetime
#  updated_at       :datetime
#  shopping_list_id :integer
#

class ShoppingList::ListItem < ActiveRecord::Base
  belongs_to :shopping_list
  has_one :item, as: :containerlike
end
