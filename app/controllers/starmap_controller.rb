class StarmapController < ApplicationController
  require "rafa_agg"
  include RafaAggregate

  def index
  end

  def draw_orbits
    @canvas_size = 640
    @number_of_planets = 12
    @orbit_step = ((@canvas_size-20)/@number_of_planets)/2.to_f

    ruafa = EllmoRafaWrapper::Ruafa.new("mapcanvas", @canvas_size, @canvas_size)
    ruafa.render
    #render :js => "var rafa = Raphael('mapcanvas', #{@canvas_size}, #{@canvas_size});"

=begin
    render :text =>
    canvas('mapcanvas', @canvas_size, @canvas_size) do |canvas|

      orbit_params = {'stroke' => 'white', 'stroke-dasharray' => ". ", 'stroke-opacity' => 0.6}
      sun_params = {'stroke' => 'none', 'fill' => 'yellow'}

      1.upto(@number_of_planets) { |x|
        canvas.circle(
          @canvas_size/2,
          @canvas_size/2,
          x * @orbit_step,
          orbit_params
        )
      }
      #canvas.circle(50, 50, 20, params)
    end
=end
  end
end
