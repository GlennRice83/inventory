class ItemForm
  include ActiveAttr::Model

  attribute :sku
  attribute :unit
  attribute :value

  validates :sku, presence: true
  validates :unit, presence: true
  validates :value, presence: true, numericality: true

  def valid?
    if !Food.where(sku: sku).first
      errors.add(:sku, "Food not found")
      return false
    end

    super
  end

  def save
    return false unless valid?

    Item.create(
      unit: unit,
      value: value,
      food: Food.where(sku: sku).first
    ).save!

    true
  rescue ActiveRecord::RecordInvalid
    false
  end
end
