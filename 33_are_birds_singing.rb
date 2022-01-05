temper = ARGV[0]
season = ARGV[1]
seasons = %w(1.spring 2.summer 3.autumn 4.winter)

puts "Temperature: " + temper.to_s unless temper.nil?
puts "Season: " + seasons[season.to_i - 1] unless season.nil?

until temper != nil
  puts "Please input temperature:"
  temper = STDIN.gets.chomp.to_i
end

until season != nil && season.to_i > 0
  puts "Please, select the season:"
  puts seasons
  season = STDIN.gets.chomp.to_i
end

temper = temper.to_i
season = season.to_i

if season == 2
  if temper >= 15 && temper <= 35
    puts "Birds are singing"
  else
    puts "Sorry, but birds don't sing"
  end
elsif temper >= 22 && temper <= 30
  puts "Birds are singing"
else
  puts "Sorry, but birds don't sing"
end
