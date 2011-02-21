# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
Starsystem.create({:name => "dummy_system_1"})
PlanetType.create([
  {:name => "volcanic", :color => "red"},
  {:name => "aquatic", :color => "blue"},
  {:name => "desert", :color => "yellow"}
])
Planet.create([
  {:name => "planet1", :starsystem_id => Starsystem.find_by_name("dummy_system_1").id, :planet_type_id => PlanetType.find_by_name("volcanic").id, :orbit_radius => 170, :period => 600},
  {:name => "planet2", :starsystem_id => Starsystem.find_by_name("dummy_system_1").id, :planet_type_id => PlanetType.find_by_name("aquatic").id, :orbit_radius => 255, :period => 480}
])
