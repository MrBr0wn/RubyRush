require_relative "./modules/70_regexp_methods.rb"

regexp_str = get_rnd_regexp_str

puts "Think of as many words as you can that contain this pattern: " +
      regexp_str.gsub(".", "*")
puts "Press X for exit"

count = 0

loop do
  word = STDIN.gets.chomp

  if word.downcase == "x"
    break
  end

  if word_exist?(word)
    if word =~ /#{regexp_str}/
      puts "Correct 🤓"
      count += 1
    else
      puts "Incorrect 😳"
    end
  else
    puts "That word is not exist 😱"
  end
end

puts "Game over. Your score: #{count}"
