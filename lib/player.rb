require_relative 'assets.rb'

class Player
  def initialize(x, y, speed)
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

  def draw
    @sprite = Sprite.new(
      PLAYER,
      x: @x, y: @y,
    )
  end
end
