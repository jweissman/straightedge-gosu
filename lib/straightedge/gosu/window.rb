module Straightedge
  module Gosu
    class Surface < ::Gosu::Window
      extend Forwardable

      attr_accessor :adapter
      attr_reader :scene, :font

      def initialize(caption: "Gosu-as-a-Surface", 
		     width: 300, height: 300) # scale: 1.0)
	#@adapter = adapter
	@width  = width  #* @scale
	@height = height #* @scale
	@scale = 1.0
	super @width, @height, false
	self.caption   = caption
	@font = ::Gosu::Font.new(self, ::Gosu::default_font_name, 20)
      end

      def update; @adapter.step   end
      def draw;   @adapter.render end

      def scale_position(x,y)
	[x / @scale, y / @scale ]
      end

      def button_down(id)
	case id
	when ::Gosu::MsLeft
	  @adapter.click(scale_position(mouse_x,mouse_y))
	else
	end
      end
    end
  end
end
