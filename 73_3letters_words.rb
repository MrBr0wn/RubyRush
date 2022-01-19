text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
regexp = Regexp.new("[[:word:]]+", "i")
words = text.scan(regexp)
count3letters = 0

words.each do |word|
  if word.length == 3
    count3letters += 1
  end
end

if count3letters > 0
  puts "Words from 3th letters: #{count3letters}"
else
  puts "Words from 3th letters not found"
end
