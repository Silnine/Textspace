# require 'ruby2d'
require 'gosu'
require_relative 'lib/assets.rb'
require_relative 'lib/map.rb'
require_relative 'lib/player.rb'
require_relative 'lib/ships.rb'

# set title: "Textspace"
# set resizable: true
#
# screen_width = get :width
# screen_height = get :height
#
# update do
#   clear
#
#   ship.draw
#   player.draw
# end
#
# on :key_held do |event|
#   if ['w', 'a', 's', 'd'].include?(event.key)
#     player.move(event.key)
#   end
# end

class Textspace < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Textspace"

    @ship = Spherepod.new
    @player = Player.new(100, 100, 2)
  end

  def button_down id
    case id
    when Gosu::KB_ESCAPE
      close
    end
  end

  def update
    @player.move('w') if Gosu.button_down? Gosu::KB_W
    @player.move('a') if Gosu.button_down? Gosu::KB_A
    @player.move('s') if Gosu.button_down? Gosu::KB_S
    @player.move('d') if Gosu.button_down? Gosu::KB_D
  end

  def draw
    @ship.draw_ship
    @player.draw_player
  end
end

Textspace.new.show
