class Ship < ActiveRecord::Base
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

