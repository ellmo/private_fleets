class StarmapController < ApplicationController
  require "rafa_agg"
  include RafaAggregate

  def index
  end

  def draw_orbits
    @canvas_size = 640
    @number_of_planets = 12
    @orbit_step = ((@canvas_size-20)/@number_of_planets)/2.to_f
    orbit_params = {'stroke' => 'white', 'stroke-dasharray' => "-", 'stroke-opacity' => 0.6}
    sun_params = {'stroke' => 'none', 'fill' => 'yellow'}

    r = Rafagg.new("mapcanvas", @canvas_size, @canvas_size)
    1.upto(@number_of_planets) do |x|
      r.circle("planet#{x}", @canvas_size/2, @canvas_size/2, x * @orbit_step, orbit_params)
    end

    render :js => r.call
  end
end
