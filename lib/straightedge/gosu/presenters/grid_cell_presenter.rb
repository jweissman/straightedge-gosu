class GridCellPresenter < QuadrilateralPresenter
  attr_accessor :scale

  def width;  1 end
  def height; 1 end

  def s; @scale ||= 10.0 end

  def coordinates(*ignored)
    x1,y1,x2,y2 = (x*s)+1, (y*s)+1, (x+width)*s, (y+height)*s
    [[x1,y1],[x1,y2],[x2,y1],[x2,y2]]
  end

  def display(cell)
    @color = cell.color
    super(cell)
  end
end
