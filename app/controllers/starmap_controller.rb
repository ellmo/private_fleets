class StarmapController < ApplicationController
  require "rafa_agg"
  include RafaAggregate

  def index
    @canvas_size = 640
    @system = Starsystem.find 1
    @planets = @system.planets
    orbit_params = {:stroke => 'white', 'stroke-dasharray' => "-", 'stroke-opacity' => 0.6}

    @r = Rafagg.new
    @r.canvas("mapcanvas", @canvas_size, @canvas_size)
    @planets.each do |planet|
      @r.circle("#{planet.name}_orbit", @canvas_size/2, @canvas_size/2, planet.orbit_radius, orbit_params)
      @r.circle("#{planet.name}", 320+planet.x_pos, 320+planet.y_pos, 10, {:fill => planet.planet_type.color})
    end
    #@r.rect("ddd", 300, 300, 40, 40, 5, orbit_params)
    #@r.ellipse("eee", 320, 320, 80, 120, orbit_params)
  end

  def update_planet_movement
    @system = Starsystem.find 1
    @planets = @system.planets
    
    r = Rafagg.new
    @planets.each do |planet|
      r.set_attr(planet.name, {:cx => 320+planet.x_pos, :cy => 320+planet.y_pos})
    end

    render :js => r.call
  end

end
