class Recipe < ActiveRecord::Base
  has_many :ingredients
  has_one :description
end
