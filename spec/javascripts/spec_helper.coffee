#= require application
#= require ember_data_factory_guy
#= require_self

FactoryGuy.define('food', ->
  sequences:
    name: (num) ->
      "food #{num}"

d = document
d.write('<div id="ember-testing-container"><div id="ember-testing"></div></div>')

Mother.rootElement = '#ember-testing'
Mother.setupForTesting()
Mother.injectTestHelpers()
