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

require 'spec_helper'

describe Item do
  it "I can add units to the inventory" do
  end
end
