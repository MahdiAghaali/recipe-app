class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(foods_param)
    @food.user = current_user
    if @food.save
      flash[:notice] = 'food created successfully'
      redirect_to foods_path
    else
      flash[:error] = 'food creation failed'
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end

  private

  def foods_param
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity)
  end
end
