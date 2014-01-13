class ShoppingList::ListItem < ActiveRecord::Base
  belongs_to :shopping_list
  has_one :item, as: :containerlike
end
