Mother.FoodsShowRoute = Em.Route.extend(
  model: (params) ->
    @get('store').find('food', params.food_id)
)
