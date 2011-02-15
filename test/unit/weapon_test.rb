require 'test_helper'

class WeaponTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: weapons
#
#  id             :integer(4)      not null, primary key
#  weapon_type_id :integer(4)
#  effects_set_id :integer(4)
#  name           :string(255)
#  reload_speed   :float
#  no_of_attacks  :integer(4)
#  accuracy       :float
#  falloff        :float
#  created_at     :datetime
#  updated_at     :datetime
#

