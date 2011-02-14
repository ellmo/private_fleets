class CreateModuleSets < ActiveRecord::Migration
  def self.up
    create_table :module_sets do |t|
      t.integer :ship_id
      t.integer :module_id
      t.integer :module_slot_id
      t.timestamps
    end
  end

  def self.down
    drop_table :module_sets
  end
end
