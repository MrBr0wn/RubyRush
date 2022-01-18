src_str = gets.chomp.strip.downcase.delete(" " "," "." "!" "?" "-")

puts src_str

reverse_str = src_str.reverse

if reverse_str == src_str
  puts "String is palindrome"
else
  puts "String is not palindrome"
end
