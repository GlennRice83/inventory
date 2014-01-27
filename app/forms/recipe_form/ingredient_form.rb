class RecipeForm::IngredientForm
  include ActiveAttr::Model

  attribute :preperation
  attribute :unit
  attribute :value
  attribute :food_id

  validates :preperation, presence: true
  validates :unit, presence: true
  validates :value, presence: true, numericality: true
  validates :food_id, presence: true, numericality: true

  def valid?
    return false unless Food.where(id: attributes["food_id"]).any?
    super
  end

  def save
    return false unless valid?

    Recipe::Ingredient.create(attributes)

    true
  rescue ActiveRecord::RecordInvalid
    false
  end
end
