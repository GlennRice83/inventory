module 'Routing specs', ->
  setup: ->
    Mother.reset()

test 'root route', ->
  visit '/'
  andThen ->
    expected = 'index'
    current_route = Mother.__container__.lookup('controller:application').currentRouteName
    equal(current_route, expected, "Expected #{expected} got: #{current_route}")
