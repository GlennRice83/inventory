FactoryGuy.define 'food',
  sequences:
    foodName: (num) ->
      "food #{num}"
  default:
    name: FactoryGuy.generate('foodName')
