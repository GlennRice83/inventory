module Api
  module V1
    class ItemsController < Api::V1::BaseController
      def index
        render json: Item.all
      end

      def show
        item = Item.find_by_id(params[:id])

        if item
          render json: item
        else
          render status: :not_found, nothing: true
        end
      end

      def create
        item = Item.new(item_params)

        if item.save
          render json: item
        else
          render status: :bad_request, nothing: true
        end
      end

      def show
        if (item = Item.find_by_id(params[:id]))
          render json: item
        else
          render status: :not_found, nothing: true
        end
      end

      private

      def item_params
        params.require(:item).permit(:value, :unit, :food_id)
      end
    end
  end
end
