# == Schema Information
#
# Table name: containers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#
FactoryGirl.define do
  factory :container do
    sequence(:name) { |n| "container #{n}" }
  end
end
