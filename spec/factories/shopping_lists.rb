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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shopping_list do
    name "MyString"
    store "MyString"
    state 1
  end
end
