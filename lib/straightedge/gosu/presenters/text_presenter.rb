class TextPresenter < Straightedge::Presenter
  def display(label)
    text = label.is_a?(String) ? label : label.text
    @surface.font.draw(text, x, y, ZOrder::UI, 1.0, 1.0, color)
  end
end
