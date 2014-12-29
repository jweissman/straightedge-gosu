class QuadrilateralPresenter < Straightedge::Presenter
  include Straightedge

  def coordinates(w,h)
    [[x,y],[x,y+h],[x+w,y],[x+w,y+h]]
  end

  def coordinates_with_colors(w,h)
    clr = (color.is_a?(Symbol)||color.is_a?(String)) ? Colors.hex_value(color) : color
    coordinates(w,h).map { |c| c + [clr] }
  end

  def display(rect)
    coords = coordinates_with_colors(rect.x, rect.y).flatten
    @surface.draw_quad(*coords)
  end
end
