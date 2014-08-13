module Api
  module V1
    class FoodsController < Api::V1::BaseController
      def index
        render json: Food.all
      end

      def show; end
    end
  end
end
