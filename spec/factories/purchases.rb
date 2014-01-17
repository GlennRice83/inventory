# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :purchase do
    price_cents 1
    store_item_id 1
  end
end
