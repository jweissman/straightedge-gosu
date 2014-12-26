#module Straightedge::Adapter
  #module Presenters
    class GridPresenter < Straightedge::Presenter
      def display(grid, scale: 10.0)
	cell_presenter = GridCellPresenter.new
	cell_presenter.on(@surface)
	cell_presenter.scale = scale

	grid.each do |cell|
	  cell_presenter.at(cell).display(cell)
	  #GridCellPresenter.new.on(@surface).display(cell)
	end
      end
    end
#  end
#end
