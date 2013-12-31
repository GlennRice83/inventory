class ContainerForm
  include ActiveAttr::Model

  attribute :name
  attribute :parent_id

  validates :name, presence: true

  def valid?
    if parent_id && !Container.find_by_id(parent_id)
      errors.add(:parent_id, "Parent container not found")
      return false
    end

    super
  end

  def save
    return false unless valid?

    Container.create(
      name: name,
      parent_id: parent_id,
    ).save!

    true
  rescue ActiveRecord::RecordInvalid
    false
  end
end
