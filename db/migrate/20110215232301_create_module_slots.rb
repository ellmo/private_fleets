class CreateModuleSlots < ActiveRecord::Migration
  def self.up
    create_table :module_slots do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :module_slots
  end
end
