require 'test_helper'

class ShipModelTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: ship_models
#
#  id             :integer(4)      not null, primary key
#  ship_class_id  :integer(4)
#  name           :string(255)
#  price          :integer(4)
#  power_output   :integer(4)
#  crew           :integer(4)
#  mobility       :integer(4)
#  sublight_speed :float
#  light_speed    :float
#  durability     :integer(4)
#  armor          :integer(4)
#  reflective     :integer(4)
#  reactive       :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

