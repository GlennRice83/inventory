class ItemSerializer < ActiveModel::Serializer
  attributes :id, :value, :unit, :food

  def food
    @object.food.id
  end
end
