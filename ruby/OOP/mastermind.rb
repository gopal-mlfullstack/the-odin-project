class Mastermind
  COLORS = %w[R G B Y O P].freeze # Red, Green, Blue, Yellow, Orange, Purple

  def initialize
    @secret_code = Array.new(4) { COLORS.sample }
    @turns_left = 12
  end

  def play
    puts "=== WELCOME TO MASTERMIND ==="
    puts "Guess the 4-color code using: #{COLORS.join(', ')}"
    puts "You have 12 turns. (e.g. R G B Y)"
    puts "Feedback format: [Exact Matches (Black)] - [Right Color, Wrong Spot (White)]\n\n"

    while @turns_left > 0
      print "Turn (#{@turns_left}/12) - Enter your guess: "
      input = gets.chomp.upcase.split

      unless valid_guess?(input)
        puts "Invalid input. Please choose 4 colors from: #{COLORS.join(', ')}"
        next
      end

      if input == @secret_code
        puts "\n🎉 Congratulations! You broke the secret code: #{@secret_code.join(' ')}"
        return
      end

      exact, near = evaluate_guess(input)
      puts "Feedback: [ #{exact} exact ] - [ #{near} correct color, wrong position ]\n\n"
      @turns_left -= 1
    end

    puts "\nGame Over! The secret code was: #{@secret_code.join(' ')}"
  end

  private

  def valid_guess?(guess)
    guess.length == 4 && guess.all? { |color| COLORS.include?(color) }
  end

  def evaluate_guess(guess)
    secret_dup = @secret_code.dup
    guess_dup = guess.dup
    exact = 0
    near = 0

    # Check for exact matches (right color, right spot)
    guess.each_with_index do |color, i|
      if color == secret_dup[i]
        exact += 1
        secret_dup[i] = nil
        guess_dup[i] = nil
      end
    end

    # Check for near matches (right color, wrong spot)
    guess_dup.compact.each do |color|
      if idx = secret_dup.index(color)
        near += 1
        secret_dup[idx] = nil
      end
    end

    [exact, near]
  end
end

Mastermind.new.play

