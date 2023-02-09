class RecipeFoodsController < ApplicationController
  def create
    foods = Food.find_by(name: recipe_foods_params[:food])
    recipe = Recipe.find(params[:recipe_id])
    ingredient = RecipeFood.new(food: foods, recipe:, quantity: recipe_foods_params[:quantity])

    if ingredient.save
      flash[:success] = 'Ingredient added'
    else
      flash[:alert] = 'Something went wrong'
    end
    redirect_back(fallback_location: recipe_path(params[:recipe_id]))
  end

  def destroy
    @ingredient = RecipeFood.find(params[:id])
    @ingredient.destroy
    redirect_back(fallback_location: recipe_path(params[:recipe_id]))
  end

  private

  def recipe_foods_params
    params.require(:recipe_food).permit(:food, :quantity)
  end
end
