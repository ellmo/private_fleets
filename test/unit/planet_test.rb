require 'test_helper'

class PlanetTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: planets
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  starsystem_id  :integer(4)
#  planet_type_id :integer(4)
#  orbit_radius   :integer(4)
#  period         :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

