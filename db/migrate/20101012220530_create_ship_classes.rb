class CreateShipClasses < ActiveRecord::Migration
  def self.up
    create_table :ship_classes do |t|
      t.integer :ship_type_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ship_classes
  end
end
