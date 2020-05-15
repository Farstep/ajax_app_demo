class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    @recipes = Recipe.all
  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, :body)
  end
end
