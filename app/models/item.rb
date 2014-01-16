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
#

class Item < ActiveRecord::Base
  belongs_to :food
  belongs_to :containerlike, polymorphic: true
end
