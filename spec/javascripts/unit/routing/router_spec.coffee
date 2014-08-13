module 'Routing specs', ->
  setup: ->
    Mother.reset()

test 'root route', -> routesTo('/', 'index')
test 'foods route', -> routesTo('/foods', 'foods.index')

routesTo = (url, routeName) ->
  visit url
  andThen ->
    equal(currentRoute(), routeName, "Expected #{routeName} got: #{currentRoute()}")

currentRoute = ->
  Mother.__container__.lookup('controller:application').currentRouteName
