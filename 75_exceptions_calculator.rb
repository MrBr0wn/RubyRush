puts "Input first number: "
x = STDIN.gets.chomp.to_i

puts "Input second number: "
y = STDIN.gets.chomp.to_i

puts "Select action: (+ - * /)"
z = STDIN.gets.chomp

case z
when "+"
  puts "x + y = #{x + y}"
when "-"
  puts "x - y = #{x - y}"
when "*"
  puts "x * y = #{x * y}"
when "/"
  begin
    puts "x / y = #{x / y}"
  rescue ZeroDivisionError
    puts "Division by zero!"
  end
else
  puts "Action is not exist"
end
