module RafaAggregate

  class Rafagg
    attr_reader :element_id, :width, :height, :reg, :reg_old
    attr_accessor :backup_reg

    # Creates a Raphael proxy class and initializes the registry
    def initialize()
      @backup_reg = false
      @reg_old = []
      @reg = []
    end

    # Creates a Raphael canvas in a given html element
    # javascript calls in order.
    # Arguments are:
    # * element_id:String - the html id of an element (a div would actually be the only reasonable choice) to start the Raphael canvas in
    # * width:Fixnum - width of the canvas object, it can be different than the html element's width, but it really shouldn't
    # * height:Fixnum - height of the canvas object
    def canvas(element_id, width, height)
      (element_id.is_a? String) ?
        @element_id = element_id : raise(ArgumentError, "element_id has to be a String")
      (width.is_a? Fixnum) ?
        @width = width : raise(ArgumentError, "width has to be a Fixnum")
      (height.is_a? Fixnum) ?
        @height = height : raise(ArgumentError, "height has to be a Fixnum");
      @reg.push "var raphael = Raphael(\"#{@element_id}\", #{@width}, #{@height});"
    end

    # Releases the string registry, so that the string output
    # can be rendered using 'render :js => Rafagg.call' method.
    # Current registry is emptied in the process. If 'backup_reg'
    # value is true, the contents of the current registry are
    # added to the @reg_old array.
    # (should you need them while debugging)
    def call
      _reg = @reg
      @reg_old += @reg if @backup_reg
      @reg = []
      return _reg.to_s.strip
    end

    # Clears the bakcup registry
    def clear_old_reg
      @reg_old = []
    end

    # Modifies SVG attributes of a given Raphael object.
    # Arguments are:
    # * name:String - the name of a Raphael object to be modified
    # * params:Hash - collection of SVG attributes (e.g. {"stroke-dasharray" => "-."})
    def set_attr(name, params)
      if( name.is_a? String and params.is_a? Hash)
        _params = "#{name}.attr(#{params.to_json});"
        @reg.push _params
      else
        raise(ArgumentError, "The arguments are: object's name, SVG parameters")
      end
    end

    # Adds a javascript function creating a circle with given
    # parameters through Raphael.js to the class registry.
    # The method accepts 4 or 5 arguments:
    # * name:String - the name of the object created
    # * cx:Numeric - x position of the circle
    # * cy:Numeric - y position of the circle
    # * radius:Numeric - radius of the circle
    # * params:Hash - optional collection of SVG attributes (e.g. {"stroke-dasharray" => "-."})
    def circle(name, cx, cy, radius, params=nil)
      if( name.is_a? String and cx.is_a? Numeric and cy.is_a? Numeric and radius.is_a? Numeric )
        @reg.push("var #{name} = raphael.circle(#{cx}, #{cy}, #{radius});")
        set_attr(name, params) if (params and params.is_a? Hash)
      else
        raise(ArgumentError, "The arguments are: object`s name, center x, center y, radius, SVG parameters")
      end
    end

    # Adds a javascript function creating a rectangle with given
    # parameters through Raphael.js to the class registry.
    # The method accepts 6 or 7 arguments:
    # * name:String - the name of the object created
    # * cx:Numeric - x position of the top-left corner
    # * cy:Numeric - y position of the top-left corner
    # * width:Numeric - width of the rectangle
    # * height:Numeric - height of the rectangle
    # * rounding:Numeric - rounded corner radius
    # * params:Hash - optional collection of SVG attributes (e.g. {"stroke-dasharray" => "-."})
    def rect(name, cx, cy, width, height, rounding=0,params=nil)
      if( name.is_a? String and cx.is_a? Numeric and cy.is_a? Numeric and width.is_a? Numeric and height.is_a? Numeric and rounding.is_a? Numeric)
        @reg.push("var #{name} = raphael.rect(#{cx}, #{cy}, #{width}, #{height}, #{rounding});")
        set_attr(name, params) if (params and params.is_a? Hash)
      else
        raise(ArgumentError, "
            The arguments are: object`s name, top-left corner x, top-left corner y,\n
            width, height, rounding (default 0), SVG parameters
          ")
      end
    end

    # Adds a javascript function creating an ellipse with given
    # parameters through Raphael.js to the class registry.
    # The method accepts 5 or 6 arguments:
    # * name:String - the name of the object created
    # * cx:Numeric - x position of the circle
    # * cy:Numeric - y position of the circle
    # * hradius:Numeric - horizontal radius of the ellipse
    # * vradius:Numeric - vertical radius of the ellipse
    # * params:Hash - optional collection of SVG attributes (e.g. {"stroke-dasharray" => "-."})
    def ellipse(name, cx, cy, hradius, vradius, params=nil)
      if( name.is_a? String and cx.is_a? Numeric and cy.is_a? Numeric and hradius.is_a? Numeric and vradius.is_a? Numeric )
        @reg.push("var #{name} = raphael.ellipse(#{cx}, #{cy}, #{hradius}, #{vradius});")
        set_attr(name, params) if (params and params.is_a? Hash)
      else
        raise(ArgumentError, "
            The arguments are: object`s name, center x, center y, horizontal radius, vertical radius,\n
            SVG parameters
          ")
      end
    end

  end

end
