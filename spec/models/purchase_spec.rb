# == Schema Information
#
# Table name: purchases
#
#  id            :integer          not null, primary key
#  price_cents   :integer
#  store_item_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#  unit          :string(255)
#  value         :float
#

require 'spec_helper'

describe Purchase do
  describe "#price_per_unit" do
    it "takes a unit and returns the price per unit"
  end
end
