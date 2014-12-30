class GridPresenter < Straightedge::Presenter
  def display(grid) #, scale: 10.0)
    cell_presenter = QuadrilateralPresenter.new.on(@surface)
    grid.each_cell do |cell| 
      #puts "--- rendering cell in #{cell.color}"
      cell_presenter.display(cell)
    end
  end
end
