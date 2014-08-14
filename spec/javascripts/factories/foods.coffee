FactoryGuy.define 'food',
  sequences:
    foodName: (num) ->
      "food #{num}"
    foodSku: (num) ->
      "sku #{num}"
  default:
    name: FactoryGuy.generate('foodName')
    sku: FactoryGuy.generate('foodSku')
