# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  sku        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  shelf_life :decimal(, )
#

class Food < ActiveRecord::Base
  has_many :items
  has_many :store_items
  has_many :stores, through: :store_items


  validates :name, uniqueness: true, presence: true
  validates :sku, uniqueness: true, presence: true

  def total_quantity(unit = "lbs")
    unit_sum = items.inject(Unit.new(0, unit)) do |sum, i|
      sum + Unit.new(i.value, i.unit)
    end

    unit_sum >>= unit
    unit_sum.scalar.to_f
  end
end
