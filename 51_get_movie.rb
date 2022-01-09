require "./modules/classes/51_movie.rb"

director = nil
titles = []

unless !director.nil?
  puts "Please, input a director name:"
  director = STDIN.gets.chomp

  3.times do
    unless titles.size > 3
      puts "Please, input title(#{titles.size}/3) of this director's movie"
      title = STDIN.gets.chomp
      movie = Movie.new(title, director)
      titles << movie
    end
  end
end

rand_movie = titles.sample
puts "Director: #{rand_movie.director}"
puts "Movies: #{rand_movie.title}"
