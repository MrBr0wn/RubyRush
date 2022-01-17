curren_path = "./" + File.dirname(__FILE__)

require curren_path + "/modules/classes/57_game.rb"
require curren_path + "/modules/classes/57_result_printer.rb"
require curren_path + "/modules/classes/57_word_reader.rb"
# require curren_path + "/modules/data/57_words.txt"


printer = ResultPrinter.new

reader = WordReader.new

word = reader.read_from_file(curren_path + "/modules/data/57_words.txt")

game = Game.new(word)

while game.status == 0 do
  printer.print_status(game)
  game.ask_next_letter
end

printer.print_status(game)
