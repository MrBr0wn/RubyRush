def get_letters
  word = ARGV[0]

  if word == nil || word == ""
    abort "Word not found!"
  end

  return word.split("")
end

def get_user_input
  letter = ""

  while letter == ""
    letter = STDIN.gets.chomp
  end

  return letter
end

def check_result(user_input, letters, correct_letters, incorrect_letters)
  if correct_letters.include?(user_input) ||
    incorrect_letters.include?(user_input)
    return 0
  end

  if letters.include?(user_input)
    correct_letters << user_input

    if letters.uniq.size == correct_letters.size
      return 1
    else
      return 0
    end
  else
    incorrect_letters << user_input
    return -1
  end

end

def get_word_for_print(letters, correct_letters)
  result = ""

  for letter in letters
    if correct_letters.include?(letter)
      result += letter + " "
    else
      result += "__ "
    end
  end

  return result
end

def print_status(letters, correct_letters, incorrect_letters, errors)
  puts "\nWord is: " + get_word_for_print(letters, correct_letters)

  puts "Errors (#{errors}): #{incorrect_letters.join(", ")}"

  if errors >= 7
    puts "You loose"
  else
    if letters.uniq.size == correct_letters.size
      puts "You win\n\n"
    else
      puts "You have attempts: " + (7 - errors).to_s
    end
  end
end

def clear
  system "clear"
end
