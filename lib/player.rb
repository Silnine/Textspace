require_relative 'assets.rb'

class Player
  def initialize(x, y, speed)
    @sprite = PLAYER
    @x = x
    @y = y
    @speed = speed
  end

  def move(key)
    case key
    when 'w'
      @y -= @speed
    when 'a'
      @x -= @speed
    when 's'
      @y += @speed
    when 'd'
      @x += @speed
    end
  end

  def draw_player
    @sprite.draw(@x, @y, 1)
  end
end
