# For more information see: http://emberjs.com/guides/routing/

Mother.Router.map ()->
  @resource 'foods', ->
    @route('show', path: '/:food_id' )
    @route('new')
