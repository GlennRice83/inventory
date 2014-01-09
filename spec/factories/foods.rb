# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  sku        :string(255)
#  created_at :datetime
#  updated_at :datetime
#
FactoryGirl.define do
  factory :food do
    sequence(:name) { |n| "food #{n}" }
    sequence(:sku) { |n| "sku#{n}" }
  end
end
