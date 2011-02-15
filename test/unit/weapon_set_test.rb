require 'test_helper'

class WeaponSetTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: weapon_sets
#
#  id         :integer(4)      not null, primary key
#  ship_id    :integer(4)
#  weapon_id  :integer(4)
#  slot_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

