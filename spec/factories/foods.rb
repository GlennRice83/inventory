FactoryGirl.define do
  factory :food do
    sequence(:name) { |n| "food #{n}" }
    sequence(:sku) { |n| "sku#{n}" }
  end
end
