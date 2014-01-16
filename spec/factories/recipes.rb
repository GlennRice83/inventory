# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :recipe do
  end
end
