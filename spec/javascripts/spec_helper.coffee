#= require application
#= require_self

d = document
d.write('<div id="ember-testing-container"><div id="ember-testing"></div></div>')

Mother.rootElement = '#ember-testing'
Mother.setupForTesting()
Mother.injectTestHelpers()
