class WeaponSlot < ActiveRecord::Base
end

# == Schema Information
#
# Table name: weapon_slots
#
#  id             :integer(4)      not null, primary key
#  ship_model_id  :integer(4)
#  weapon_type_id :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

