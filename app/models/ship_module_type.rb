class ShipModuleType < ActiveRecord::Base
  set_table_name "module_types"
end

# == Schema Information
#
# Table name: module_types
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

