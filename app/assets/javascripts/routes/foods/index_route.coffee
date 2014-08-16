Mother.FoodsIndexRoute = Ember.Route.extend(
  setupController: (controller, model) ->
    controller.set('model', model)

  model: ->
    @get('store').findAll('food')
)
