module Straightedge
  module Gosu
    class Surface < ::Gosu::Window
      include Straightedge::Surface

      attr_reader :scene, :font, :scale

      def initialize(geometry=[800,600], caption: "Gosu-as-a-Surface")
	@width, @height  = *geometry
	super @width, @height, false
	self.caption   = caption
	@font = ::Gosu::Font.new(self, ::Gosu::default_font_name, 20)
      end

      def update; @adapter.step   end
      def draw;   @adapter.render end
      def button_down(id)
	case id
	when ::Gosu::MsLeft
	  @adapter.click(mouse_x,mouse_y)
	else
	end
      end

      #
      # implementing straightedge stuff...
      #
      alias :display :show
    end
  end

  config.surface_class = Straightedge::Gosu::Surface
end
