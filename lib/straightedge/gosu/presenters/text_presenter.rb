class TextPresenter < Straightedge::Presenter
  def display(label)
    #text = label.is_a?(String) ? label : label.text
    #puts "--- drawing text '#{label.text}' at #{label.x}, #{label.y} with color #{label.color}"
    @surface.font.draw(label.text, label.x, label.y, ZOrder::UI, 1.0, 1.0, Straightedge::Colors.hex_value(label.color))
  end
end
