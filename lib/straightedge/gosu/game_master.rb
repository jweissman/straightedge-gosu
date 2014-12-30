module Straightedge
  module Gosu
    class GameMaster < Straightedge::Director
      def orchestrate
	super
	#warn "over-write game logic in GameMaster#orchestrate"
      end

      def click(x, y)
	warn "received click at #{x}, #{y}"
      end
    end
  end

  config.agent_class = Gosu::GameMaster
end
