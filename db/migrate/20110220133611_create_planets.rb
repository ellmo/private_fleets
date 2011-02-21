class CreatePlanets < ActiveRecord::Migration
  def self.up
    create_table :planets do |t|
      t.string :name
      t.integer :starsystem_id
      t.integer :planet_type_id
      t.integer :orbit_radius
      t.integer :period

      t.timestamps
    end
  end

  def self.down
    drop_table :planets
  end
end
