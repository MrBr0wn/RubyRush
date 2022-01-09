require "./modules/classes/52_movie_person.rb"
require "./modules/classes/51_movie.rb"

puts "We have three person"

person1 = Person.new("James", "Bond", 60)
person1.movie = Movie.new("Agent 007", "Samuel Alexander Mendes")
puts person1.return_full_name + "\nHis favorite movie is #{person1.movie.title}"

person2 = Person.new("Jason", "Bourne", 50)
person2.movie = Movie.new("The Bourne Identity", "Douglas Eric Liman")
puts person2.return_full_name + "\nHis favorite movie is #{person2.movie.title}"

person3 = Person.new("Mr.", "Bean", 80)
person3.movie = Movie.new("Johnny Engleash", "Peter Howitt")
puts person3.return_full_name + "\nHis favorite movie is #{person3.movie.title}"
