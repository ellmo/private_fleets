require 'test_helper'

class ShipClassTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: ship_classes
#
#  id           :integer(4)      not null, primary key
#  ship_type_id :integer(4)
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

