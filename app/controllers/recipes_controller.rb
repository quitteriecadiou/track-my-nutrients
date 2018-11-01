class RecipesController < ApplicationController
  def index
    if params[:query].present?
      @recipes = Recipe.where("name ILIKE ?", "%#{params[:query]}%")
    elsif params[:category].present?
      @recipes = Recipe.where(name: "#{params[:category]}")
    else
    @recipes = Recipe.all
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

private

end
