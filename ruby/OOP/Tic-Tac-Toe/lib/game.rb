require_relative 'board'
require_relative 'player'

class Game
  def initialize
    @board = Board.new
    @players = [
      Player.new("Player 1", "X"),
      Player.new("Player 2", "O")
    ]
    @current_player_index = 0
  end

  def play
    puts "Welcome to Tic Tac Toe!"
    puts "Positions are numbered like this:"
    puts " 1 | 2 | 3 "
    puts "---+---+---"
    puts " 4 | 5 | 6 "
    puts "---+---+---"
    puts " 7 | 8 | 9 "
    puts

    loop do
      @board.display
      current = current_player

      position = current.get_move

      until @board.place_mark(position, current.mark)
        puts "That square is already taken or invalid. Try again."
        position = current.get_move
      end

      if @board.winner?
        @board.display
        puts "#{current.name} (#{current.mark}) wins!"
        break
      elsif @board.full?
        @board.display
        puts "It's a draw!"
        break
      end

      switch_player
    end
  end

  private

  def current_player
    @players[@current_player_index]
  end

  def switch_player
    @current_player_index = (@current_player_index + 1) % 2
  end
end