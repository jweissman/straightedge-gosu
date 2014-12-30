class QuadrilateralPresenter < Straightedge::Gosu::Presenter
  def display(rect)
    real_coords = rect.corners.map { |xy| [xy.x + rect.x, xy.y + rect.y ] }
    colored_coords = colorize(real_coords, Straightedge::Colors.hex_value(rect.color))
    #puts "--- rendering #{rect.color} at #{rect.x}, #{rect.y}"
    @surface.draw_quad(*colored_coords)
  end
end
