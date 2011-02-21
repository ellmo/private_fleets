class CreatePlanetTypes < ActiveRecord::Migration
  def self.up
    create_table :planet_types do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :planet_types
  end
end
