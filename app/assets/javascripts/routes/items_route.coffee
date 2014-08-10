Mother.ItemsRoute = Ember.Route.extend(
  model: ->
    @get('store').find('item')
)
