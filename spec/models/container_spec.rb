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

require 'spec_helper'

describe Container do
  pending "add some examples to (or delete) #{__FILE__}"
end
