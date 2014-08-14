IntegrationTestHelper = Em.Object.createWithMixins(FactoryGuyTestMixin)

testHelper = null
store = null

module('Foods Integration:',
  setup: ->
    Mother.reset()
    Mother.ApplicationAdapter = DS.FixtureAdapter
    testHelper = IntegrationTestHelper.setup(Mother)
    store = testHelper.getStore()

  teardown: ->
    Em.run( -> testHelper.teardown() )
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
  visit "/foods/#{food.id}"
  andThen ->
    foundTitle = find('h1').text()
    expectedTitle = food.name
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
    foundFoodName = find('.foods li:last').text().trim()
    expectedFoodName = "#{foodName} : #{foodSku}"
    equal(
      foundFoodName,
      expectedFoodName,
      "Expected foods to contain #{expectedFoodName}, got: #{foundFoodName}"
    )
)
