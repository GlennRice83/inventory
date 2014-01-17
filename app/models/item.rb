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

class Item < ActiveRecord::Base
  belongs_to :food
  belongs_to :containerlike, polymorphic: true

  as_enum :state, available: 1, reserved: 2, trash: 3, toilet: 4

  def time_to_expired
    expiration_date - Time.now
  end

  def expired?
    time_to_expired < 0
  end
end
