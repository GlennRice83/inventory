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
  food = testHelper.make('food')
  visit '/foods'
  click 'button.destroy:first'
  andThen ->
    foundLength = find('.foods li').length
    equal(foundLength, 0, "Expected 0, got: #{foundLength}")
)
