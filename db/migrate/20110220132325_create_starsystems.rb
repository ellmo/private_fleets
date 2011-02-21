class CreateStarsystems < ActiveRecord::Migration
  def self.up
    create_table :starsystems do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :starsystems
  end
end
