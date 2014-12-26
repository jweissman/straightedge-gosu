    class TextPresenter < Straightedge::Presenter
      def display(label)
	@surface.font.draw(label.text, x, y, ZOrder::UI, 1.0, 1.0, color) # 0xffffff00)
      end
    end
