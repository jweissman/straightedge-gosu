module Straightedge::Gosu
  class Presenter < Straightedge::Presenter
    def colorize(coords, color)
      coords.map { |c| c + [color] }.flatten
    end
  end
end

require 'straightedge/gosu/presenters/quadrilateral_presenter'
require 'straightedge/gosu/presenters/text_presenter'
require 'straightedge/gosu/presenters/grid_presenter'
require 'straightedge/gosu/presenters/hexagon_presenter'


Straightedge.config.presenter_classes = {
  Straightedge::Figures::Grid          => GridPresenter,
  Straightedge::Figures::Quadrilateral => QuadrilateralPresenter,
  Straightedge::Figures::Hexagon       => HexagonPresenter,

  Straightedge::Figures::Label => TextPresenter,
  String => TextPresenter,
}
