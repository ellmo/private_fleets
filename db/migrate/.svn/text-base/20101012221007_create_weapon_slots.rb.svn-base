class CreateWeaponSlots < ActiveRecord::Migration
  def self.up
    create_table :weapon_slots do |t|
      t.integer :ship_model_id
      t.integer :weapon_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :weapon_slots
  end
end
