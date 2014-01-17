# == Schema Information
#
# Table name: store_items
#
#  id         :integer          not null, primary key
#  food_id    :integer
#  store_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :store_item do
    food_id 1
    store_id 1
  end
end
