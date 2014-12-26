module Straightedge::Gosu
  class Director < Straightedge::Director
    def current_scene
      Straightedge::Gosu.example_scene
    end

    def orchestrate
    end
  end
end
