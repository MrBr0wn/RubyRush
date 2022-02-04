class Game
  def initialize(word)
    @letters = split_on_letters(word)

    @errors = 0

    @correct_letters = []
    @incorrect_letters = []

    @status = :in_progress
  end

  # Query next letter from terminal
  def ask_next_letter
    puts "\nInput next letter"

    letter = ''

    letter = STDIN.gets.chomp while letter == ''

    next_step(letter)
  end

  # -1/1 is end's of game value
  def next_step(letter)
    return if @status == -1 || @status == 1

    return if @correct_letters.include?(letter) || @incorrect_letters.include?(letter)

    if @letters.include?(letter)
      @correct_letters << letter

      @status = 1 if @correct_letters.size == @letters.uniq.size
    else
      @incorrect_letters << letter
      @errors += 1

      @status = -1 if @errors >= 7

    end
  end

  # Splitting word on letters
  def split_on_letters(word)
    abort 'Word not found!' if [nil, ''].include?(word)

    word.split('')
  end

  # Getters for access to the instances
  attr_reader :letters

  attr_reader :correct_letters, :incorrect_letters, :status, :errors

  def in_progress?
    @status == :in_progress
  end
end
