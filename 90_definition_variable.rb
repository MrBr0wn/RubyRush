# comment this block for demonstration
$a = 1
b = nil

if defined?($a)
  puts "a is already defined in main scope"
else
  puts "a is not defined in main scope"
end

if defined?(b)
  puts "b is already defined in main scope"
else
  puts "b is not defined in main scope"
end

if defined?(c)
  puts "c is already defined in main scope"
else
  puts "c is not defined in main scope"
end

def check_available
  c = ""

  puts "\n\n***Anything below is inside method scope***\n\n"
  if defined?($a)
    puts "a is already defined in inside method scope"
  else
    puts "a is not defined in inside method scope"
  end

  if defined?(b)
    puts "b is already defined in inside method scope"
  else
    puts "b is not defined in inside method scope"
  end

  if defined?(c)
    puts "c is already defined in inside method scope"
  else
    puts "c is not defined in inside method scope"
  end
end

check_available
