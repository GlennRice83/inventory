module Api
  module V1
    class FoodsController < Api::V1::BaseController
      def index
        render json: Food.all
      end

      def create
        food = Food.create(food_params)
        render status: :created, json: food
      end

      def destroy
        Food.destroy(params[:id])
        render status: :ok, nothing: true
      end

      private

      def food_params
        params.require(:food).permit(:name, :sku)
      end
    end
  end
end
