require_relative 'dice'
require_relative 'board'
require_relative 'player'

class Game
  def start
    board = Board.new(x: 0, o: 0)
    player_1 = Player.new(:x)
    player_2 = Player.new(:o)
    dice = Dice.new

    player_1_marker = player_1.marker
    player_2_marker = player_2.marker

    while board.current_position(player_1_marker) < 100 && board.current_position(player_2_marker) < 100
      make_move(player_1_marker)
      make_move(player_2_marker)
    end

    if board.current_position(player_1_marker) >= 100
      puts "Player 1 wins"
    else
      puts "Player 2 wins"
    end
  end

  def make_move(marker)
    position = dice.roll
    board.make_move(position, marker)
  end
end

