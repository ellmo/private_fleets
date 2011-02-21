class Starsystem < ActiveRecord::Base
  has_many :planets
end

# == Schema Information
#
# Table name: starsystems
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

