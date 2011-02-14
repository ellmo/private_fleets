class CreateWeapons < ActiveRecord::Migration
  def self.up
    create_table :weapons do |t|
      t.integer :weapon_type_id
      t.integer :effects_set_id
      t.string :name
      t.float :reload_speed
      t.integer :no_of_attacks
      t.float :accuracy
      t.float :falloff

      t.timestamps
    end
  end

  def self.down
    drop_table :weapons
  end
end
