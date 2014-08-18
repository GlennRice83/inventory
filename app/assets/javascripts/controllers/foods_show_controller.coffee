Mother.FoodsShowController = Ember.ObjectController.extend(
  actions:
    addNewItem: ->
      @toggleProperty('addingNewItem')
      @

    saveNewItem: ->
      itemValue = @get('newItemValue')
      itemUnit = @get('newItemUnit')
      @newItem = @store.createRecord('item',
        value: itemValue,
        unit: itemUnit,
        food: @get('model')
      )
      @newItem.save().then( =>
        items = @get('model').get('items')
        items.pushObject(@newItem)
        @newItem = null
        @set('newItemValue', '')
        @set('newItemUnit', '')
        @toggleProperty('addingNewItem')
      )

  itemCount: (->
    @get('items').get('length')
  ).property('items.@each')
)
