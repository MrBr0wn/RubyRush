class ResultPrinter

  def initialize
    @status_image = []

    curren_path = File.dirname(__FILE__)
    counter = 0

    # change path to the template files
    files_path = curren_path.split("/")
    files_path.delete(files_path.last)
    files_path = files_path.join("/")

    @status_image << files_path

    while counter <= 7 do
      file_name = files_path + "/data/image/#{counter}.txt"

      if File.exist?(file_name)
        f = File.new(file_name)
        @status_image << f.read
        f.close
      else
        @status_image << "\n[ Image not found]\n"
      end

      counter += 1
    end
  end

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
    puts @status_image[errors]
  end

end
