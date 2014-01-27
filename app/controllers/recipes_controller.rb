class RecipesController < ApplicationController
  helper_method :recipe_form

  def new; end

  private

  def recipe_form
    @recipe_form ||= RecipeForm.new(params[:recipe_form])
  end
end
