# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  food_id    :integer
#  value      :float
#  unit       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    value 1.5
    unit "Lbs"
  end
end
