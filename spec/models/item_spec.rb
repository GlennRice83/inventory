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

require 'spec_helper'

describe Item do
  let(:item) { create(:item) }

  describe "#time_to_expired" do
    it "shows when the item will expire" do
      item.expiration_date = Time.now + 5.days
      expect(item.time_to_expired).to be_within(0.005).of(5.days.to_i)
    end
  end

  describe "#expired?" do
    it "returns true if item is expired" do
      item.expiration_date = Time.now - 5.days
      expect(item.expired?).to be_true
    end
  end
end
