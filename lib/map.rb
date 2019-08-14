require_relative 'ships.rb'

class Tile
  def initialize(sprite, x, y, rotate)
    @sprite = sprite
    @x = x
    @y = y
    @rotate = rotate
  end

  def draw
    Image.new(
      @sprite,
      x: @x * 30, y: @y * 30,
      rotate: @rotate
    )
  end
end

def check_tile(tile)
  case tile
  when :floor
    return FLOOR, 0, false
  when :hori_wall
    return WALL, 0, true
  when :vert_wall
    return WALL, 90, true
  when :topleft_wall
    return WALL_CORNER, 0, true
  when :topright_wall
    return WALL_CORNER, 90, true
  when :bottomright_wall
    return WALL_CORNER, 180, true
  when :bottomleft_wall
    return WALL_CORNER, 270, true
  when :wall_junction_down
    return WALL_JUNCTION, 0, true
  when :wall_junction_left
    return WALL_JUNCTION, 90, true
  when :wall_junction_up
    return WALL_JUNCTION, 180, true
  when :wall_junction_right
    return WALL_JUNCTION, 270, true
  when :hori_door
    return DOOR, 0, true
  when :vert_door
    return DOOR, 90, true
  when :topleft_window
    return WINDOW_CORNER, 0, true
  when :topright_window
    return WINDOW_CORNER, 90, true
  when :hori_window
    return WINDOW, 0, true
  when :none
    return nil, nil, nil
  end
end
