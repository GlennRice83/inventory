class ShoppingList::ListItem < ActiveRecord::Base
  belongs_to :shopping_list
  has_one :item, as: :containerlike

  as_enum :state, new: 0, purchased: 1, substituted: 2, not_found: 3
end
