Mother.FoodsIndexRoute = Ember.Route.extend(
  model: ->
    @get('store').findAll('food')
)
