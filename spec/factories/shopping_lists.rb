# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shopping_list do
    name "MyString"
    store "MyString"
    state 1
  end
end
