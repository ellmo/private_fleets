class PlanetType < ActiveRecord::Base
  has_many :planets
end

# == Schema Information
#
# Table name: planet_types
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  color      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

