#module Straightedge::Gosu
#  module Presenters
    class QuadrilateralPresenter < Straightedge::Presenter
      def coordinates(w,h)
	[[x,y],[x,y+h],[x+w,y],[x+w,y+h]]
      end

      def coordinates_with_colors(w,h)
	coordinates(w,h).map { |c| c + [color] }
      end

      def display(rect)
	coords = coordinates_with_colors(rect.x, rect.y).flatten
	@surface.draw_quad(*coords)
      end
    end
#  end
#end
