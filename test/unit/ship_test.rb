require 'test_helper'

class ShipTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: ships
#
#  id            :integer(4)      not null, primary key
#  ship_model_id :integer(4)
#  fleet_id      :integer(4)
#  name          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

