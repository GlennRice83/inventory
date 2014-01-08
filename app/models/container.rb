# == Schema Information
#
# Table name: containers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#

class Container < ActiveRecord::Base
  include ActsAsTree
  acts_as_tree order: "name"
  has_many :items

  validates :name, uniqueness: true, presence: true

  def parent
    super || NilContainer.new
  end
end
