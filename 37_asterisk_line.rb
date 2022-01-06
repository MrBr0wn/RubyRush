count = nil

until !count.nil? || count.is_a?(Integer)
  puts "Input count of the stars: "
  count = STDIN.gets.chomp.to_i
end

def print_line(count)
  if count > 0
    puts "*" * count
  else
    puts "Fuck you!"
  end
end

print_line(count)
