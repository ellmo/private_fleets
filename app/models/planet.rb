class Planet < ActiveRecord::Base
  belongs_to :starsystem
  belongs_to :planet_type

  def ang_vel
    (Math::PI * 2)/period
  end

  def x_pos
    Integer(orbit_radius * Math.cos(ang_vel * Time.now.to_i))
  end

  def y_pos
    Integer(orbit_radius * Math.sin(ang_vel * Time.now.to_i))
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

