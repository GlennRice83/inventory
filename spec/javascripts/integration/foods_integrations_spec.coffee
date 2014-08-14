IntegrationTestHelper = Em.Object.createWithMixins(FactoryGuyTestMixin)

testHelper = null
store = null

module('Foods integration',
  setup: ->
    testHelper = IntegrationTestHelper.setup(Mother)
    store = testHelper.getStore()

  teardown: ->
    Em.run( -> testHelper.teardown() )
)

test('Foods index page', ->
  foods = store.makeList('food', 3)

  visit '/foods'
  andThen ->
    foodList = find('.foods li')
    equal(
      foodList.length,
      foods.length,
      "Expected foods to contain #{foods.length}, got: #{foodList.length}"
    )
)
