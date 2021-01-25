# Visual of tic-tac-toe gameboard in ASCII
#
# ___|___|___
# ___|___|___
#    |   |

# Creates the game board for tic-tac-toe
class Board
  def initialize(board_size)
    @board_size = board_size
  end

  private

  def repeat_string(amount = @board_size)
    amount.times do |line|
      if line < amount - 1
        puts '___|___|___'
      else
        puts '   |   |   '
      end
    end
  end

  public

  def create_board
    repeat_string
  end
end
