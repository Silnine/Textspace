require_relative 'assets.rb'
require_relative 'map.rb'

class Ship
  def draw
    for x in 1..@width
      for y in 1..@height
        tile, rotate, blocked = check_tile(@layout[y - 1][x - 1])
        if tile
          Tile.new(tile, x, y, rotate).draw
        end
      end
    end
  end
end

class Spherepod < Ship
  attr_accessor :layout
  attr_accessor :width, :height

  def initialize
    @width = 11 # 3 - adjusted for indexing
    @height = 11
    @layout = [
      [:none, :none, :none, :topleft_window, :hori_window, :hori_window, :hori_window, :topright_window, :none, :none, :none],
      [:none, :none, :topleft_wall, :bottomright_wall, :floor, :floor, :floor, :bottomleft_wall, :topright_wall, :none, :none],
      [:none, :topleft_wall, :bottomright_wall, :floor, :floor, :floor, :floor, :floor, :bottomleft_wall, :topright_wall, :none],
      [:topleft_wall, :wall_junction_left, :floor, :floor, :floor, :floor, :floor, :floor, :floor, :wall_junction_right, :topright_wall],
      [:wall_junction_right, :wall_junction_up, :hori_wall, :wall_junction_down, :hori_wall, :hori_door, :hori_wall, :wall_junction_down, :hori_wall, :wall_junction_up, :wall_junction_left],
      [:vert_wall, :floor, :floor, :vert_wall, :floor, :floor, :floor, :vert_wall, :floor, :floor, :vert_wall],
      [:vert_door, :floor, :floor, :vert_door, :floor, :floor, :floor, :vert_door, :floor, :floor, :vert_wall],
      [:wall_junction_right, :wall_junction_down, :hori_wall, :wall_junction_up, :hori_wall, :hori_door, :hori_wall, :wall_junction_up, :hori_wall, :wall_junction_down, :wall_junction_left],
      [:bottomleft_wall, :wall_junction_left, :floor, :floor, :floor, :floor, :floor, :floor, :floor, :wall_junction_right, :bottomright_wall],
      [:none, :bottomleft_wall, :topright_wall, :floor, :floor, :floor, :floor, :floor, :topleft_wall, :bottomright_wall, :none],
      [:none, :none, :bottomleft_wall, :hori_wall, :hori_wall, :hori_wall, :hori_wall, :hori_wall, :bottomright_wall, :none, :none],
    ]
  end
end
