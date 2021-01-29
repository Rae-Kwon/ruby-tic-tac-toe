# frozen_string_literal: true

# Player class for player inputs
# player variable must be a number, usually 1 and 2
class Player
  def initialize(player)
    @player = player
  end

  private

  def players_turn
    puts "Player #{@player}'s turn"
  end

  public

  def player_input
    players_turn
    puts 'Please input coordinates A-C 1-3 (ex. A2)'
    input = gets.to_i
    if (1..9).include?(input)
      puts "Player #{@player} selected #{input}"
      input
    else
      puts "Player #{@player} selected invalid input #{input}. Please select from numbers 1 to 9"
    end
  end

  def icon
    case @player
    when 1
      'X'
    when 2
      'O'
    else
      ''
    end
  end
end
