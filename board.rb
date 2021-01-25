# frozen_string_literal: true

# Visual of tic-tac-toe gameboard in ASCII
#
# ___|___|___
# ___|___|___
#    |   |

# Creates the game board for tic-tac-toe
class Board
  def create_board
    { 'A' => { 1 => '___|', 2 => '___|', 3 => '___' },
      'B' => { 1 => '___|', 2 => '___|', 3 => '___' },
      'C' => { 1 => '   |', 2 => '   |', 3 => '   ' } }
  end
end
