class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :sku, :item_ids

  def item_ids
    @object.items.map &:id
  end
end
