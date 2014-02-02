class FoodDecorator < Draper::Decorator
  delegate_all

  def display_total_quantity(unit)
    h.content_tag(
      :span,
      "#{object.total_quantity(unit)} #{unit}",
      class: "total_quantity"
    )
  end
end
