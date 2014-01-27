class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def show
    @food = Food.find(params[:id])
  end

  def create
   @food = Food.new(food_params)

   if @food.save
     flash[:success] = "food successfully created"
     redirect_to foods_path
   else
     render "new"
   end
  end

  private

  def food_params
    params.require(:food).permit(:name, :sku)
  end
end
