module Straightedge
  module Gosu
    class GameMaster < Straightedge::Director
      def orchestrate
	warn "over-write game logic in GameMaster#orchestrate"
      end

      def click(xy)
	warn "received click at #{xy}"
      end
    end
  end

  config.agent = GameMaster
end
