class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_type: 'first')
    @recipe.ingredients.build(ingredient_type: 'second')
  end

  def create
    @recipe = Recipe.create
  end
end
