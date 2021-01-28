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
    input = gets
    if input == (1..9)
      puts "Player #{@player} selected #{input.chomp}"
    else
      puts "Player #{@player} selected invalid input #{input.chomp}. Please select from numbers 1 to 9"
    end
    input.chomp.to_i
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
