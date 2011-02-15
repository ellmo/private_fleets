class ShipClass < ActiveRecord::Base
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

