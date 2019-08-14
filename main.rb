require 'ruby2d'
require_relative 'lib/assets.rb'
require_relative 'lib/map.rb'
require_relative 'lib/player.rb'
require_relative 'lib/ships.rb'

set title: "Textspace"
set resizable: true

screen_width = get :width
screen_height = get :height

ship = Spherepod.new
player = Player.new(100, 100, 5)


update do
  clear

  ship.draw
  player.draw
end

on :key_held do |event|
  if ['w', 'a', 's', 'd'].include?(event.key)
    player.move(event.key)
  end
end

show
