# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    value 1.5
    measure "MyString"
  end
end
