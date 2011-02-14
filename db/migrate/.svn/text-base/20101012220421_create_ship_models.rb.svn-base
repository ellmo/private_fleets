class CreateShipModels < ActiveRecord::Migration
  def self.up
    create_table :ship_models do |t|
      t.integer :ship_class_id
      t.string :name
      t.integer :price
      t.integer :power_output
      t.integer :crew
      t.integer :mobility
      t.float :sublight_speed
      t.float :light_speed
      t.integer :durability
      t.integer :armor
      t.integer :reflective
      t.integer :reactive
      t.timestamps
    end
  end

  def self.down
    drop_table :ship_models
  end
end
