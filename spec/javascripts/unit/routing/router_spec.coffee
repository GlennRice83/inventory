module 'Routing specs', ->
  setup: ->
    Mother.reset()

test 'root route', ->
  visit '/'
  andThen ->
    expected = 'index'
    equal(current_route(), expected, "Expected #{expected} got: #{current_route()}")

test 'foods route', ->
  visit '/foods'
  andThen ->
    expected = 'foods'
    equal(current_route(), expected, "Expected #{expected} got: #{current_route()}")

current_route = ->
  Mother.__container__.lookup('controller:application').currentRouteName
