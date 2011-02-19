module RafaAggregate

  class Rafagg
    attr_reader :element_id, :width, :height, :reg, :reg_old
    attr_accessor :backup_reg

    # Creates a Raphael canvas in a given html element
    # and initializes the string registry, keeping all the
    # javascript calls in order.
    def initialize(element_id, width, height)
      (element_id.is_a? String) ?
        @element_id = element_id : raise(ArgumentError, "element_id has to be a String")
      (width.is_a? Fixnum) ?
        @width = width : raise(ArgumentError, "width has to be a Fixnum")
      (height.is_a? Fixnum) ?
        @height = height : raise(ArgumentError, "height has to be a Fixnum");
      @reg = ["var raphael = Raphael('#{@element_id}', #{@width}, #{@height});"]
      @backup_reg = false
      @reg_old = []
    end

    # Releases the string registry, so that the string output
    # can be rendered using 'render :js => Rafagg.call' method.
    # Current registry is emptied in the process and it's contents
    # are added to the @reg_old array (should you need them while
    # debugging)
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

    # Adds a javascript function creating a circle with given
    # parameters through Raphaël.js to the class registry
    # 
    def circle(*options)
      if options.length > 5
        raise(ArgumentError, "Unable to process more than 5 arguments.")
      else
        if( options[0].is_a? String and options[1].is_a? Fixnum and options[2].is_a? Fixnum and options[2].is_a? Fixnum )
          circle_id = options[0]
          circle_x = options[1]
          circle_y = options[2]
          circle_r = options[3]
        else
          raise(ArgumentError, "\nArgument 0 is a name of the created object and needs to be a String.\nArguments 1, 2, 3 correspond to cricle's X, Y, Radius and need to be Fixnums.")
        end
        (options[4] and options[4].is_a? Hash) ?
          params = options[4].collect {|x| "'#{x[0]}':'#{x[1]}', "} : params = nil
      end
      (params) ?
        _params = "#{circle_id}.attr({#{params.to_s}});" : _params = ""
      @reg.push("var #{circle_id} = raphael.circle(#{circle_x}, #{circle_y}, #{circle_r}); #{_params}")
    end

  end

end
