class ResultPrinter

  def print_status(game)
    clear
    puts "\nWord is: " + get_word_for_print(game.letters, game.correct_letters)

    puts "Errors (#{game.errors}): #{game.incorrect_letters.join(", ")}"

    print_hangman(game.errors)

    if game.errors >= 7
      puts "You loose"
    else
      if game.letters.uniq.size == game.correct_letters.size
        puts "You win\n\n"
      else
        puts "You have attempts: " + (7 - game.errors).to_s
      end
    end
  end

  def get_word_for_print(letters, correct_letters)
    result = ""

    for letter in letters
      if correct_letters.include?(letter)
        result += letter + " "
      else
        result += "__ "
      end
    end

    return result
  end

  # Clearing terminal window
  def clear
    system "clear"
  end

  # print hangman in the result
  def print_hangman(errors)
    case errors
    when 0
      puts "
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
      when 1
        puts "
          _______
          |/
          |     ( )
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
      when 2
        puts "
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
      when 3
        puts "
          _______
          |/
          |     ( )
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        "
      when 4
        puts "
          _______
          |/
          |     ( )
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        "
      when 5
        puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        "
      when 6
        puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
      when 7
        puts "
          _______
          |/     |
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
      end

  end

end
