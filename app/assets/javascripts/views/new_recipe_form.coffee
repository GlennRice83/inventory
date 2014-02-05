class Mother.Views.RecipeForm extends Backbone.View
  @register ".js-new-recipe-form"

  initialize: ->
    console.log "here", @$("#recipes_form_ingredient_forms")[0]
    @$("#recipes_form_ingredient_forms").nestedAttributes
      bindAddTo: @$(".js-add-ingredient")
