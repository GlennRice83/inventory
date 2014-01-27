# == Schema Information
#
# Table name: foods
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  sku          :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  shelf_life   :decimal(, )
#  container_id :integer
#

class Food < ActiveRecord::Base
  belongs_to :container
  has_many :items
  has_many :store_items
  has_many :stores, through: :store_items


  validates :name, uniqueness: true, presence: true
  validates :sku, uniqueness: true, presence: true

  def total_quantity(unit = "lbs")
    unit_sum = items.inject(Phys::Quantity.new(0, unit)) do |sum, i|
      sum += Phys::Quantity.new(i.value, i.unit)
    end

    unit_sum.value.to_f
  end

  def default_container
    self.container
  end

  def default_container=(container)
    self.container = container
  end
end
