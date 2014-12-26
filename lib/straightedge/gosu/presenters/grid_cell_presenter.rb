#module Straightedge
#  # note instead of x and y representing width and height
#  # as in the quad now it represents location within a grid
#  # (x,y are both set equal to scale now)
#  module Gosu::Presenters
    class GridCellPresenter < QuadrilateralPresenter
      def scale
	@scale ||= 10.0
      end
      alias :s :scale

      def scale=(sc)
	@scale = sc
      end

      def width;  1 end
      def height; 1 end

      def coordinates(*ignored)
	x1,y1,x2,y2 = (x*s)+1, (y*s)+1, (x+width)*s, (y+height)*s
	[[x1,y1],[x1,y2],[x2,y1],[x2,y2]]
      end

      def display(cell, grid=nil)
	@scale = grid.scale if grid
	super(cell)
      end
    end
  #end
#end
