class ShipModule < ActiveRecord::Base
  set_table_name "modules"
end

# == Schema Information
#
# Table name: modules
#
#  id             :integer(4)      not null, primary key
#  module_type_id :integer(4)
#  name           :string(255)
#  power_usage    :integer(4)
#  price          :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

