# == Schema Information
#
# Table name: purchases
#
#  id            :integer          not null, primary key
#  price_cents   :integer
#  store_item_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Purchase < ActiveRecord::Base
  belongs_to :store_item
  monetize :price_cents
end
