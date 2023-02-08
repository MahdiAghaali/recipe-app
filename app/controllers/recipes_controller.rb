class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = Recipe.includes(:user).where(user_id: current_user)
  end

  def new
    @recipe = Recipe.new
  end


  def create
    @recipe = Recipe.new(form_params.merge(user: current_user))

    if @recipe.save
      redirect_to recipes_url
    else
      puts 'error-----------------------------------------------'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def form_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public?)
  end
end
