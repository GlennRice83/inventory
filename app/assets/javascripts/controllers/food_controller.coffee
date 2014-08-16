Mother.FoodController = Ember.ObjectController.extend
  actions:
    removeFood: ->
      food = this.get('model')
      food.deleteRecord()
      food.save()
