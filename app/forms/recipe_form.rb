class RecipeForm
  include ActiveAttr::Model

  # built in attrs and validations
  attribute :name
  attribute :description

  validates :name, presence: true
  validates :description, presence: true


  def ingredients
    @ingredients ||= [Recipe::Ingredients.new]
  end

  def ingredient_forms
    @ingredient_forms ||= ingredients.map do |ingredient|
      RecipeForm::IngredientForm.new(ingredient: ingredient)
    end
  end

  def valid?

  end

  def save
    return false unless valid?
    #save some records here

    true
  rescue ActiveRecord::RecordInvalid
    false
  end

end
