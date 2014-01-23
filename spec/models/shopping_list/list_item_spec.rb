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

require 'spec_helper'

describe ShoppingList::ListItem do
  pending "add some examples to (or delete) #{__FILE__}"
end
