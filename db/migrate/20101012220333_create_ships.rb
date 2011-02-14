class CreateShips < ActiveRecord::Migration
  def self.up
    create_table :ships do |t|
      t.integer :ship_model_id
      t.integer :fleet_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ships
  end
end
