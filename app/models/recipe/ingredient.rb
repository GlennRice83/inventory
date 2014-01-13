class Recipe::Ingredient < ActiveRecord::Base
  belongs_to :recipe
  has_one :item, as: :containerlike
end
