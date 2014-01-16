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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shopping_list_list_item, :class => 'ShoppingList::ListItem' do
    state 1
  end
end
