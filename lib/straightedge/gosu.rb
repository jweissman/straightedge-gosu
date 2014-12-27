require 'gosu'
require 'straightedge'
require 'straightedge/gosu/version'
require 'straightedge/gosu/window'

require 'straightedge/gosu/presenters/quadrilateral_presenter'
require 'straightedge/gosu/presenters/text_presenter'
require 'straightedge/gosu/presenters/grid_presenter'
require 'straightedge/gosu/presenters/grid_cell_presenter'

require 'straightedge/gosu/zorder'

module Straightedge
  module Gosu
    include Straightedge::Toolkit
    include Straightedge::Figures
  end

  # maybe engines are expected to impl this in global namespace?
  # or even override on director?
  def self.default_surface_class
    puts "--- using gosu surface!"
    Straightedge::Gosu::Surface
  end
end
