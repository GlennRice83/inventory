# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#

class Recipe < ActiveRecord::Base
  has_many :ingredients
end
