IntegrationTestHelper = Em.Object.createWithMixins(FactoryGuyTestMixin)

testHelper = null
store = null

module('Item Integration:',
  setup: ->
    Mother.reset()
    Teaspoon.hook('database_cleaner_start')
    testHelper = IntegrationTestHelper.setup(Mother)
    store = testHelper.getStore()

  teardown: ->
    Em.run( -> testHelper.teardown() )
    Teaspoon.hook('database_cleaner_clean')
)

test('View a list of Items for a Food', ->
  items = store.makeList('item', 3)
  food = store.makeFixture('food', { items: items })
  visit "/foods/#{food.id}"
  andThen ->
    expectedItemText = 'Item count: 3'
    itemText = find('li:last').text().trim()
    equal(
      itemText,
      expectedItemText,
      "Expected '#{expectedItemText}' got: '#{itemText}'"
    )
)

test('Add an Item to a Food', ->
  params = JSON.stringify(
    {
      'hook_args': {
        'factory': 'food',
        'attributes': {
          'name': 'Apple',
          'sku': '123456'
        }
      }
    }
  )
  Teaspoon.hook('factory_girl', { 'method': 'POST', 'payload': params})

  visit '/foods'
  click('.foods li:first a')
  click('#add-new-item')
  fillIn('input#new-item-value')
  fillIn('input#new-item-unit')
  click('button#save-new-item')
  andThen ->
    expectedItemText = 'Item count: 1'
    itemText = find('li:last').text().trim()
    equal(
      itemText,
      expectedItemText,
      "Expected '#{expectedItemText}' got: '#{itemText}'"
    )
)
