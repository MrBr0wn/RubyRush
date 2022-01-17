require_relative "./modules/classes/57_word_reader.rb"

reader = WordReader.new
movie = reader.read_from_file("./modules/data/movies.txt")
puts "Recommended movie to watching: " + movie
