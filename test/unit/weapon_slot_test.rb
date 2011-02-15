require 'test_helper'

class WeaponSlotTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: weapon_slots
#
#  id             :integer(4)      not null, primary key
#  ship_model_id  :integer(4)
#  weapon_type_id :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

