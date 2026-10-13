class Board
  WINNING_COMBINATIONS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], # rows
    [0, 3, 6], [1, 4, 7], [2, 5, 8], # columns
    [0, 4, 8], [2, 4, 6]             # diagonals
  ].freeze

  def initialize
    # We use a flat array of 9 cells for simplicity (0–8)
    @grid = Array.new(9, " ")
  end

  def display
    puts
    puts " #{@grid[0]} | #{@grid[1]} | #{@grid[2]} "
    puts "---+---+---"
    puts " #{@grid[3]} | #{@grid[4]} | #{@grid[5]} "
    puts "---+---+---"
    puts " #{@grid[6]} | #{@grid[7]} | #{@grid[8]} "
    puts
  end

  def place_mark(position, mark)
    return false unless valid_move?(position)

    @grid[position] = mark
    true
  end

  def valid_move?(position)
    position.between?(0, 8) && @grid[position] == " "
  end

  def full?
    @grid.none? { |cell| cell == " " }
  end

  def winner?
    WINNING_COMBINATIONS.any? do |combo|
      positions = combo.map { |i| @grid[i] }
      positions.uniq.size == 1 && positions.first != " "
    end
  end

  def winning_mark
    WINNING_COMBINATIONS.each do |combo|
      positions = combo.map { |i| @grid[i] }
      return positions.first if positions.uniq.size == 1 && positions.first != " "
    end
    nil
  end
end