module Api
  module V1
    class FoodsController < Api::V1::BaseController
      def index
        render json: Food.all
      end

      def show
        render json: Food.find(params[:id])
      end

      def create
        food = Food.create(food_params)
        render status: :created, json: food
      end

      def destroy
        food = Food.find_by_id(params[:id])
        if food
          food.destroy!
          render status: :ok, nothing: true
        else
          render status: :not_found, nothing: true
        end
      end

      private

      def food_params
        params.require(:food).permit(:name, :sku)
      end
    end
  end
end
