require 'api_helper'

resource 'Foods' do
  header 'Content-Type', 'application/json'

  parameter :name, 'The name of the food'
  parameter :sku, 'The SKU of the food'

  get '/api/v1/foods' do
    let!(:foods) { create_list(:food, 3) }

    example 'Getting a list of all foods' do
      do_request

      expect(status).to eq(200)
      expect(response_body).to eq(
        ActiveModel::ArraySerializer.new(foods, root: 'foods').to_json
      )
    end
  end

  post 'api/v1/foods' do
    let(:new_food) do
      {
        name: 'NEW FOOD NAME',
        sku: 'NEW FOOD SKU'
      }
    end

    let(:name) { new_food[:name] }
    let(:sku) { new_food[:sku] }

    let(:raw_post) { params.to_json }

    example 'Creating a new Food' do
      do_request

      expect(status).to eq(201)
      expect(response_body).to eq(
        FoodSerializer.new(Food.last).to_json
      )
    end
  end
end
