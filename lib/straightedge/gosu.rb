require 'gosu'
require 'straightedge'
require 'straightedge/gosu/version'
require 'straightedge/gosu/window'

require 'straightedge/gosu/presenters/quadrilateral_presenter'
require 'straightedge/gosu/presenters/text_presenter'
require 'straightedge/gosu/presenters/grid_presenter'
require 'straightedge/gosu/presenters/grid_cell_presenter'

require 'straightedge/gosu/director'

require 'straightedge/gosu/zorder'


module Straightedge
  module Gosu
    include Straightedge::Toolkit
    include Straightedge::Figures
    
    #
    # tempting to move this upstream so that it can be something of a 'visual' integration test?
    #
    def self.example_scene
      @scene = {
	[0,0]     => Grid.new([10,10]),
	[100,100] => Quadrilateral.new([20,20]),
	[50,50]   => Label.new.says("this is only a test")
      }
    end
  end
end
