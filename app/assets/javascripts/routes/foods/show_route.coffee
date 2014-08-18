Mother.FoodsShowRoute = Em.Route.extend(
  setupController: (controller, model) ->
    controller.set('model', model)

  model: (params) ->
    @get('store').find('food', params.food_id)
)
