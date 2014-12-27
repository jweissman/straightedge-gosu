class GridPresenter < Straightedge::Presenter
  def display(grid) #, scale: 10.0)
    cell_presenter = GridCellPresenter.new
    cell_presenter.on(@surface)
    cell_presenter.scale = grid.scale
    grid.each_mark do |cell|
      cell_presenter.at(cell).display(cell) #, self)
    end
  end
end
