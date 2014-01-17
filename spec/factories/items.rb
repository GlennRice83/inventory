# == Schema Information
#
# Table name: items
#
#  id                 :integer          not null, primary key
#  food_id            :integer
#  value              :float
#  unit               :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  container_id       :integer
#  containerlike_id   :integer
#  containerlike_type :string(255)
#  combinable         :boolean
#  expiration_date    :datetime
#  state_cd           :integer
#

FactoryGirl.define do
  factory :item do
    value 1.5
    unit "lbs"
  end
end
