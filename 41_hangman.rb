require "./modules/methods.rb"

clear
puts "*Hangman game*"

letters = get_letters

errors = 0

incorrect_letters = []
correct_letters = []

while errors < 7
  print_status(letters, correct_letters, incorrect_letters, errors)

  puts "Input letter: "

  user_input = get_user_input

  result = check_result(user_input, letters, correct_letters, incorrect_letters)

  if result == -1
    errors += 1
  elsif result == 1
    break
  end
end

print_status(letters, correct_letters, incorrect_letters, errors)
