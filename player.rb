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
    puts "Player #{@player} selected #{input.chomp}"
  end
end
