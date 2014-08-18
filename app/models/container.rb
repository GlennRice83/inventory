class Container < ActiveRecord::Base
  include ActsAsTree
  acts_as_tree order: 'name'
  has_many :items
  has_many :foods

  validates :name, uniqueness: true, presence: true

  def parent
    super || Container.none
  end
end
