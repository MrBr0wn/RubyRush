class Game

  def initialize(word)
    @letters = split_on_letters(word)

    @errors = 0

    @correct_letters = []
    @incorrect_letters = []

    @status = 0
  end

  # Query next letter from terminal
  def ask_next_letter
    puts "\nInput next letter"

    letter = ""

    while letter == "" do
      letter = STDIN.gets.chomp
    end

    next_step(letter)
  end

  # -1/1 is end's of game value
  def next_step(letter)
    if @status == -1 || @status == 1
      return
    end

    if @correct_letters.include?(letter) || @incorrect_letters.include?(letter)
      return
    end

    if @letters.include?(letter)
      @correct_letters << letter

      if @correct_letters.size == @letters.uniq.size
        @status = 1
      end
    else
      @incorrect_letters << letter
      @errors += 1

      if @errors >= 7
        @status = -1
      end

    end

  end

  # Splitting word on letters
  def split_on_letters(word)
    if word == nil || word == ""
      abort "Word not found!"
    end

    return word.split("")
  end

  # Getters for access to the instances
  def letters
    return @letters
  end

  def correct_letters
    @correct_letters
  end

  def incorrect_letters
    @incorrect_letters
  end

  def status
    @status
  end

  def errors
    @errors
  end

end
