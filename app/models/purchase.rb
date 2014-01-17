class Purchase < ActiveRecord::Base
  belongs_to :store_item
  monetize :price_cents
end
