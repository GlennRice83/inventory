class ShoppingList < ActiveRecord::Base
  has_many :list_items, class_name: ShoppingList::ListItem
end
