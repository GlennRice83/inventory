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
    it "returns true if item is expired"
  end
end
