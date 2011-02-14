class CockpitController < ApplicationController
  def cockpit
  end

  def draw_planet
    render :text => "jg.clear();
              jg.setColor('blue');
              jg.fillEllipse(320, 320, 80, 80);
              jg.paint();",
           :content_type => "text/javascript"
  end
end
