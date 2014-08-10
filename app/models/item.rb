class Item < ActiveRecord::Base
  belongs_to :food
  belongs_to :containerlike, polymorphic: true

  as_enum :state, available: 1, reserved: 2, trash: 3, toilet: 4

  def time_to_expired
    expiration_date - Time.now
  end

  def location_name
    containerlike.name || "#{containerlike_type} #{containerlike.id}"
  end

  def expired?
    time_to_expired < 0
  end

  def containerlike
    super || Container.none
  end
end
