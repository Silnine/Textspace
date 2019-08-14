require_relative 'ships.rb'

class Tile
  def initialize(sprite, x, y, rotate)
    @sprite = sprite
    @x = x
    @y = y
    @rotate = rotate
  end

  def draw_tile
    @sprite.draw_rot(@x * 30, @y * 30, 1, @rotate)
  end
end

def check_tile(tile)
  case tile
  when :floor
    return FLOOR, 0, 0
  when :hori_wall
    return WALL, 0, 1
  when :vert_wall
    return WALL, 90, 1
  when :topleft_wall
    return WALL_CORNER, 0, 1
  when :topright_wall
    return WALL_CORNER, 90, 1
  when :bottomright_wall
    return WALL_CORNER, 180, 1
  when :bottomleft_wall
    return WALL_CORNER, 270, 1
  when :wall_junction_down
    return WALL_JUNCTION, 0, 1
  when :wall_junction_left
    return WALL_JUNCTION, 90, 1
  when :wall_junction_up
    return WALL_JUNCTION, 180, 1
  when :wall_junction_right
    return WALL_JUNCTION, 270, 1
  when :hori_door
    return DOOR, 0, 1
  when :vert_door
    return DOOR, 90, 1
  when :topleft_window
    return WINDOW_CORNER, 0, 1
  when :topright_window
    return WINDOW_CORNER, 90, 1
  when :hori_window
    return WINDOW, 0, 1
  when :none
    return nil, nil, nil
  end
end
