# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

positions = { 1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => ' ', 6 => ' ', 7 => ' ', 8 => ' ', 9 => ' ' }

game_won = false

game_board = Board.new(positions)
p1 = Player.new(1)
p2 = Player.new(2)

while game_won == false
  game_board.render_board
  p1_input = p1.player_input

  if positions[p1_input] == ' '
    positions[p1_input] = p1.icon
    p "p1 input: #{p1_input}"
    p "p1 pos: #{positions}"
  else
    p1_input = p1.player_input until positions[p1_input] == ' '
    positions[p1_input] = p1.icon if positions[p1_input] == ' '
  end

  game_board.render_board
  p2_input = p2.player_input

  if positions[p2_input] == ' '
    positions[p2_input] = p2.icon
    p "p2 input: #{p2_input}"
    p "p2 pos: #{positions}"
  else
    p2_input = p2.player_input until positions[p2_input] == ' '
    positions[p2_input] = p2.icon if positions[p2_input] == ' '
  end
end
