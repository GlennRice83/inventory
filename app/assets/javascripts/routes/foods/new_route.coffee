Mother.FoodsNewRoute = Em.Route.extend(
  model: ->
    @get('store').createRecord('food')

  actions:
    create: ->
      newFood = @get('currentModel')
      self = @
      newFood.save().then(
        -> self.transitionTo('foods'),
        ->
      )
)
