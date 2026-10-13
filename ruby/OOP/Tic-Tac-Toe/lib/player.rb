class Player
  attr_reader :name, :mark

  def initialize(name, mark)
    @name = name
    @mark = mark
  end

  def get_move
    loop do
      print "#{name} (#{mark}), enter a position (1-9): "
      input = gets.chomp

      # Convert "1"–"9" → 0–8
      if input.match?(/^[1-9]$/)
        return input.to_i - 1
      else
        puts "Please enter a number between 1 and 9."
      end
    end
  end
end