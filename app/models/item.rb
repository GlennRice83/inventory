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

class Item < ActiveRecord::Base
  belongs_to :food
end
