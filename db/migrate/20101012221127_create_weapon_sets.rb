class CreateWeaponSets < ActiveRecord::Migration
  def self.up
    create_table :weapon_sets do |t|
      t.integer :ship_id
      t.integer :weapon_id
      t.integer :slot_id

      t.timestamps
    end
  end

  def self.down
    drop_table :weapon_sets
  end
end
