class ShipModuleSet < ActiveRecord::Base
  set_table_name "module_sets"
end

# == Schema Information
#
# Table name: module_sets
#
#  id             :integer(4)      not null, primary key
#  ship_id        :integer(4)
#  module_id      :integer(4)
#  module_slot_id :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

