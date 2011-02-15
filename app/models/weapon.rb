class Weapon < ActiveRecord::Base
end

# == Schema Information
#
# Table name: weapons
#
#  id             :integer(4)      not null, primary key
#  weapon_type_id :integer(4)
#  effects_set_id :integer(4)
#  name           :string(255)
#  reload_speed   :float
#  no_of_attacks  :integer(4)
#  accuracy       :float
#  falloff        :float
#  created_at     :datetime
#  updated_at     :datetime
#

