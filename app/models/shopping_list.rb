# == Schema Information
#
# Table name: shopping_lists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  store      :string(255)
#  state      :integer
#  created_at :datetime
#  updated_at :datetime
#

class ShoppingList < ActiveRecord::Base
  has_many :list_items, class_name: ShoppingList::ListItem
end
