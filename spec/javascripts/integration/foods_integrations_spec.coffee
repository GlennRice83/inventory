module 'Foods integration', ->
  setup: ->
    Mother.reset()
    setupFactories()

test 'Foods index page', ->
  visit '/foods'
  andThen ->
    foods = [1,2]
    foodsLength = find('.foods li').length
    equal(foodsLength, foods.length, "Expected foods to contain #{foods.length}, got: #{foodsLength}")

setupFactories = ->
  FactoryGuy.define('food', ->
    sequences:
      name: (num) ->
        "food #{num}"
  )
