class StoreItem < ActiveRecord::Base
  belongs_to :store
  belongs_to :food
  has_many :purchases
end
