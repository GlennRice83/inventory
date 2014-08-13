module 'Foods integration', ->
  setup: ->
    Mother.reset()

test 'Foods index page', ->
  visit '/foods'
  andThen ->
    header_text = find('.foods-heading').text()
    expected = 'Now in the Foods Index'
    equal(header_text, expected, "Expected #{expected}, got: #{header_text}")
