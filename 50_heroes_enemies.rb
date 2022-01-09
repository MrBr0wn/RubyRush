hero = ARGV[0]

unless !hero.nil?
  puts "Please, input a name of hero:"
  hero = STDIN.gets.chomp
end

def who_is_enemy(hero)

  case hero.downcase
  when "batman"
    puts "Joker"
  when "sherlok holmes"
    puts "Prof. Moriarty"
  when "john mcclane"
    puts "Hans Gruber"
  when "harry potter"
    puts "He Who Must Not Be Named"
  when "neo"
    puts "Agent Smith"
  else
    puts "Sorry, no matches found"
  end
end

who_is_enemy(hero)
