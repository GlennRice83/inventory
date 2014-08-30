IntegrationTestHelper = Em.Object.createWithMixins(FactoryGuyTestMixin)

testHelper = null
store = null

module('Foods Integration:',
  setup: ->
    Mother.reset()
    Teaspoon.hook('database_cleaner_start')


    testHelper = IntegrationTestHelper.setup(Mother)
    store = testHelper.getStore()

  teardown: ->
    Em.run( -> testHelper.teardown() )
    Teaspoon.hook('database_cleaner_clean')
)

test('Visit Foods index page', ->
  payload_builder = (factory, attributes) ->
    JSON.stringify(
      { 'hook_args': { 'factory': factory, 'attributes': attributes } }
    )

  apple_payload = payload_builder('food', { 'name': 'apple', 'sku': '1234'})
  Teaspoon.hook('factory_girl', { 'method': 'POST', 'payload': apple_payload})

  orange_payload = payload_builder('food', { 'name': 'orange', 'sku': '43121'})
  Teaspoon.hook('factory_girl', { 'method': 'POST', 'payload': orange_payload})

  visit '/foods'
  andThen ->
    foodList = find('.foods li')
    equal(
      2,
      foodList.length,
      "Expected foods to contain 2, got: #{foodList.length}"
    )
)

test('Visit a Food show page', ->
  food = testHelper.make('food')
  visit '/foods'
  click('.foods li:first a')
  andThen ->
    foundTitle = find('h1').text()
    expectedTitle = food.get('name')
    equal(
      foundTitle,
      expectedTitle,
      "Expected to find #{expectedTitle}, got: #{foundTitle}"
    )
)

test('Create new Food', ->
  foodName = 'New Food'
  foodSku = 'New Food Sku'
  visit('/foods/new')
  fillIn('input.name', foodName)
  fillIn('input.sku', foodSku)
  click('button.submit')

  andThen ->
    foundFoodName = find('.foods li:last a').text().trim()
    expectedFoodName = "#{foodName} : #{foodSku}"
    equal(
      foundFoodName,
      expectedFoodName,
      "Expected foods to contain #{expectedFoodName}, got: #{foundFoodName}"
    )
)

test('Destroy a Food', ->
  food = store.makeFixture('food')
  visit '/foods'
  click 'button.destroy:first'
  andThen ->
    foundLength = find('.foods li').length
    equal(foundLength, 0, "Expected 0, got: #{foundLength}")
)
