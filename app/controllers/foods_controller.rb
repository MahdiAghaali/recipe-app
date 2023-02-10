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

  def shopping_list
    sql = 'Select b.name, b.measurement_unit, b.price as price, sum(a.quantity) - sum(b.quantity) as quantity from
      recipe_foods as a
      left join foods as b on a.food_id = b.id
      inner join recipes as c on a.recipe_id = c.id
      where c.user_id = ' + current_user.id.to_s + '
      group by b.name, b.measurement_unit, b.price
      '
    @foods = ActiveRecord::Base.connection.execute(sql)
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
