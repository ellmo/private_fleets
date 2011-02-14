class CreateModules < ActiveRecord::Migration
  def self.up
    create_table :modules do |t|
      t.integer :module_type_id
      t.int :effect_set_id
      t.string :name
      t.integer :power_usage
      t.integer :price

      t.timestamps
    end
  end

  def self.down
    drop_table :modules
  end
end
