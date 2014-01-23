# == Schema Information
#
# Table name: shopping_list_list_items
#
#  id               :integer          not null, primary key
#  state_cd         :integer
#  created_at       :datetime
#  updated_at       :datetime
#  shopping_list_id :integer
#

class ShoppingList::ListItem < ActiveRecord::Base
  belongs_to :shopping_list
  has_one :item, as: :containerlike

  as_enum :state, new: 0, purchased: 1, substituted: 2, not_found: 3
end
