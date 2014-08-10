class Store < ActiveRecord::Base
  has_many :store_items
  has_many :foods, through: :store_items
end
