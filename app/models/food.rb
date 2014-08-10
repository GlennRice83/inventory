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

    unit_sum.value
  end

  def default_container
    self.container
  end

  def default_container=(container)
    self.container = container
  end
end
