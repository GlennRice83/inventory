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

require 'spec_helper'

describe ShoppingList do
  pending "add some examples to (or delete) #{__FILE__}"
end
