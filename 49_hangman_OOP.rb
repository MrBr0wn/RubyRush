require "./modules/classes/49_game.rb"
require "./modules/classes/49_result_printer.rb"

printer = ResultPrinter.new

word = ARGV[0]

game = Game.new(word)

while game.status == 0
  printer.print_status(game)

  game.ask_next_letter
end

printer.print_status(game)
