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

class StoreItem < ActiveRecord::Base
  belongs_to :store
  belongs_to :food
  has_many :purchases
end
