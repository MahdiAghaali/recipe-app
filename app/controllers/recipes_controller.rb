class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user).where(user_id: current_user)
  end

  def public_recipes
    @recipes = Recipe.where(public: true).order(created_at: :desc)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.recipe_foods.includes(:food)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(form_params.merge(user: current_user))

    if @recipe.save
      flash[:success] = 'recipe created!'
      redirect_to action: :index
    else
      render :new
      flash[:error] = 'Something went wrong :('
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:success] = 'Deleted'
    redirect_back(fallback_location: root_path)
  end

  def public_toggle
    @recipe = Recipe.find(params[:id])
    @recipe['public'] = !@recipe['public']
    @recipe.save
    redirect_to action: :show
  end

  private

  def form_params
    response = params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
    response[:preparation_time] = response[:preparation_time]
    response[:cooking_time] = response[:cooking_time]
    response
  end
end
