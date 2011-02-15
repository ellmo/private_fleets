class ShipModuleSlot < ActiveRecord::Base
  set_table_name "module_slots"
end

# == Schema Information
#
# Table name: module_slots
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

