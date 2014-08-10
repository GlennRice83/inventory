FactoryGirl.define do
  factory :container do
    sequence(:name) { |n| "container #{n}" }
  end
end
