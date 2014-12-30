class HexagonPresenter < Straightedge::Gosu::Presenter
  def display(poly)
    c = Straightedge::Colors.hex_value(poly.color)
    @surface.draw_triangle(*colorize(poly.left_triangle,  c))
    @surface.draw_quad(    *colorize(poly.center_quad,    c))
    @surface.draw_triangle(*colorize(poly.right_triangle, c))
  end
end
