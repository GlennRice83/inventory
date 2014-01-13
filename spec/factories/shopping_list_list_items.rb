# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shopping_list_list_item, :class => 'ShoppingList::ListItem' do
    state 1
  end
end
