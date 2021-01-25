# frozen_string_literal: true

require_relative 'board'
require_relative 'player'

new_game = Board.new
p1 = Player.new(1)
p2 = Player.new(2)

new_game
  .create_board
  .each do |row, col|
    board_segments = col.values
    puts board_segments.join
  end
