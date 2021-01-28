# frozen_string_literal: true

# Visual of tic-tac-toe gameboard in ASCII
#
# ___|___|___
# ___|___|___
#    |   |

# Creates the game board for tic-tac-toe
class Board
  def initialize(positions)
    @pos = positions
  end

  def board
    puts <<~SQUIGGLY_HEREDOC
          #{@pos[1]}  |   #{@pos[2]}  |   #{@pos[3]}
      -------|------|-------
          #{@pos[4]}  |   #{@pos[5]}  |   #{@pos[6]}
      -------|------|-------
          #{@pos[7]}  |   #{@pos[8]}  |   #{@pos[9]}
    SQUIGGLY_HEREDOC
  end
end
